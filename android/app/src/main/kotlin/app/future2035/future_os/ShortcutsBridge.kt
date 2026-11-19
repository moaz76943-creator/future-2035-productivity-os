package app.future2035.future_os

import android.app.Activity
import android.content.Intent
import android.content.pm.ShortcutInfo
import android.content.pm.ShortcutManager
import android.graphics.drawable.Icon
import android.os.Build
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodChannel

/**
 * Long-press shortcuts on the app icon (channel `future_os/shortcuts`).
 * Dart sets them with labels in the app language; each opens an in-app route.
 */
class ShortcutsBridge(private val activity: Activity, messenger: BinaryMessenger) {
    private val channel = MethodChannel(messenger, "future_os/shortcuts")
    private var launchRoute: String? = routeOf(activity.intent)

    init {
        channel.setMethodCallHandler { call, result ->
            when (call.method) {
                "set" -> { set(call.arguments as? List<*>); result.success(null) }
                "takeLaunchRoute" -> { result.success(launchRoute); launchRoute = null }
                else -> result.notImplemented()
            }
        }
    }

    /** A shortcut used while the app is already open. */
    fun onNewIntent(intent: Intent) {
        routeOf(intent)?.let { channel.invokeMethod("open", it) }
    }

    fun dispose() = channel.setMethodCallHandler(null)

    private fun set(items: List<*>?) {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.N_MR1 || items == null) return
        val manager = activity.getSystemService(ShortcutManager::class.java) ?: return
        val list = items.take(4).mapNotNull { raw ->
            val m = raw as? Map<*, *> ?: return@mapNotNull null
            val id = m["id"] as? String ?: return@mapNotNull null
            val label = (m["label"] as? String)?.take(25) ?: return@mapNotNull null
            val route = (m["route"] as? String)?.takeIf(::isAppRoute) ?: return@mapNotNull null
            val icon = activity.resources.getIdentifier("ic_shortcut_$id", "drawable", activity.packageName)
            val intent = Intent(activity, MainActivity::class.java)
                .setAction(Intent.ACTION_VIEW)
                .putExtra(EXTRA_ROUTE, route)
                .addFlags(Intent.FLAG_ACTIVITY_SINGLE_TOP or Intent.FLAG_ACTIVITY_CLEAR_TOP)
            ShortcutInfo.Builder(activity, id)
                .setShortLabel(label)
                .setLongLabel(label)
                .apply { if (icon != 0) setIcon(Icon.createWithResource(activity, icon)) }
                .setIntent(intent)
                .build()
        }
        try { manager.dynamicShortcuts = list } catch (_: Exception) { /* rate-limited or unsupported */ }
    }

    companion object {
        const val EXTRA_ROUTE = "app.future2035.route"

        fun isAppRoute(r: String) = r.length < 300 && r.startsWith("/") && !r.startsWith("//") && !r.contains("://")

        fun routeOf(intent: Intent?): String? = intent?.getStringExtra(EXTRA_ROUTE)?.takeIf(::isAppRoute)
    }
}
