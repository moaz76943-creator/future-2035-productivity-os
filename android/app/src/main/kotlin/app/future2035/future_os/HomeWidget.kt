package app.future2035.future_os

import android.app.AlarmManager
import android.app.PendingIntent
import android.appwidget.AppWidgetManager
import android.appwidget.AppWidgetProvider
import android.content.ComponentName
import android.content.Context
import android.content.Intent
import android.os.SystemClock
import android.view.View
import android.widget.RemoteViews
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodChannel

/**
 * Home screen widget: focus time left (live countdown) and flashcards due.
 * The app sends ready-made texts in its language on `future_os/home_widget`;
 * they are kept so the widget also draws while the app is closed. When a
 * session ends the widget redraws itself from an alarm.
 */
class HomeWidgetProvider : AppWidgetProvider() {
    override fun onUpdate(context: Context, manager: AppWidgetManager, ids: IntArray) = render(context)

    override fun onReceive(context: Context, intent: Intent) {
        super.onReceive(context, intent)
        if (intent.action == ACTION_REFRESH) render(context)
    }

    companion object {
        private const val PREFS = "home_widget"
        const val ACTION_REFRESH = "app.future2035.HOME_WIDGET_REFRESH"

        fun bind(context: Context, messenger: BinaryMessenger): MethodChannel {
            val channel = MethodChannel(messenger, "future_os/home_widget")
            channel.setMethodCallHandler { call, result ->
                if (call.method != "update") { result.notImplemented(); return@setMethodCallHandler }
                val m = call.arguments as? Map<*, *>
                val prefs = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE).edit()
                for (k in listOf("title", "idle", "running", "cards", "cardsRoute", "focusRoute")) {
                    prefs.putString(k, (m?.get(k) as? String)?.take(80) ?: "")
                }
                prefs.putLong("endsAt", (m?.get("endsAt") as? Number)?.toLong() ?: 0L)
                prefs.apply()
                render(context)
                result.success(null)
            }
            return channel
        }

        fun render(context: Context) {
            val manager = AppWidgetManager.getInstance(context)
            val ids = manager.getAppWidgetIds(ComponentName(context, HomeWidgetProvider::class.java))
            if (ids.isEmpty()) return
            val p = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
            val now = System.currentTimeMillis()
            val endsAt = p.getLong("endsAt", 0L)
            val running = endsAt > now
            val views = RemoteViews(context.packageName, R.layout.home_widget)
            views.setTextViewText(R.id.widget_title, p.getString("title", "") ?: "")
            if (running) {
                views.setViewVisibility(R.id.widget_timer, View.VISIBLE)
                views.setChronometer(R.id.widget_timer, SystemClock.elapsedRealtime() + (endsAt - now), null, true)
                views.setChronometerCountDown(R.id.widget_timer, true)
                views.setTextViewText(R.id.widget_focus_text, p.getString("running", "") ?: "")
                scheduleRefresh(context, endsAt)
            } else {
                views.setViewVisibility(R.id.widget_timer, View.GONE)
                views.setTextViewText(R.id.widget_focus_text, p.getString("idle", "") ?: "")
            }
            views.setTextViewText(R.id.widget_cards, p.getString("cards", "") ?: "")
            views.setOnClickPendingIntent(R.id.widget_focus, open(context, 1, p.getString("focusRoute", "/focus")))
            views.setOnClickPendingIntent(R.id.widget_title, open(context, 1, p.getString("focusRoute", "/focus")))
            views.setOnClickPendingIntent(R.id.widget_cards, open(context, 2, p.getString("cardsRoute", "/flashcards")))
            manager.updateAppWidget(ids, views)
        }

        private fun open(context: Context, code: Int, route: String?): PendingIntent {
            val intent = Intent(context, MainActivity::class.java)
                .setAction(Intent.ACTION_VIEW)
                .putExtra(ShortcutsBridge.EXTRA_ROUTE, route?.takeIf(ShortcutsBridge::isAppRoute) ?: "/")
                .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_SINGLE_TOP)
            return PendingIntent.getActivity(
                context, 5100 + code, intent,
                PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE,
            )
        }

        private fun scheduleRefresh(context: Context, atMs: Long) {
            val am = context.getSystemService(AlarmManager::class.java) ?: return
            val pi = PendingIntent.getBroadcast(
                context, 5200,
                Intent(context, HomeWidgetProvider::class.java).setAction(ACTION_REFRESH),
                PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE,
            )
            try { am.set(AlarmManager.RTC, atMs + 1000, pi) } catch (_: Exception) {}
        }
    }
}
