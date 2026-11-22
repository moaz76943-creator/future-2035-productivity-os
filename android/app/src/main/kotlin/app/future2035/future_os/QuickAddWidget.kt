package app.future2035.future_os

import android.appwidget.AppWidgetManager
import android.appwidget.AppWidgetProvider
import android.content.ComponentName
import android.content.Context
import android.widget.RemoteViews

/**
 * Quick-add widget: three buttons (new task, new note, review cards). The
 * labels are saved by [HomeWidgetProvider.bind] in the same preferences.
 */
class QuickAddWidgetProvider : AppWidgetProvider() {
    override fun onUpdate(context: Context, manager: AppWidgetManager, ids: IntArray) = render(context)

    companion object {
        fun render(context: Context) {
            val manager = AppWidgetManager.getInstance(context)
            val ids = manager.getAppWidgetIds(ComponentName(context, QuickAddWidgetProvider::class.java))
            if (ids.isEmpty()) return
            val p = context.getSharedPreferences(HomeWidgetProvider.PREFS, Context.MODE_PRIVATE)
            val views = RemoteViews(context.packageName, R.layout.quick_add_widget)
            views.setTextViewText(R.id.quick_task, p.getString("addTask", "") ?: "")
            views.setTextViewText(R.id.quick_note, p.getString("addNote", "") ?: "")
            views.setTextViewText(R.id.quick_cards, p.getString("addCards", "") ?: "")
            views.setOnClickPendingIntent(R.id.quick_task, HomeWidgetProvider.open(context, 11, p.getString("taskRoute", "/task/new")))
            views.setOnClickPendingIntent(R.id.quick_note, HomeWidgetProvider.open(context, 12, p.getString("noteRoute", "/note/new")))
            views.setOnClickPendingIntent(R.id.quick_cards, HomeWidgetProvider.open(context, 13, p.getString("cardsRoute", "/flashcards")))
            manager.updateAppWidget(ids, views)
        }
    }
}
