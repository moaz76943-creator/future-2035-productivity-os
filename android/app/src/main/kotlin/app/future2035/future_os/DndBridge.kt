package app.future2035.future_os

import android.app.AlarmManager
import android.app.NotificationManager
import android.app.PendingIntent
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.provider.Settings
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodChannel

/**
 * Do Not Disturb during focus (channel `future_os/dnd`). Only switches the
 * mode when the user granted access, remembers the mode it replaced, and
 * restores it at the end of the phase, from an alarm if the app is asleep.
 * A mode the user changed themselves in the meantime is left alone.
 */
class DndBridge(private val context: Context, messenger: BinaryMessenger) {
    private val channel = MethodChannel(messenger, "future_os/dnd")

    init {
        channel.setMethodCallHandler { call, result ->
            when (call.method) {
                "hasAccess" -> result.success(nm(context).isNotificationPolicyAccessGranted)
                "requestAccess" -> {
                    try {
                        context.startActivity(
                            Intent(Settings.ACTION_NOTIFICATION_POLICY_ACCESS_SETTINGS)
                                .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK),
                        )
                    } catch (_: Exception) {}
                    result.success(null)
                }
                "enable" -> result.success(enable(context, (call.arguments as? Number)?.toLong()))
                "restore" -> { restore(context); result.success(null) }
                else -> result.notImplemented()
            }
        }
    }

    fun dispose() = channel.setMethodCallHandler(null)

    companion object {
        private const val PREFS = "focus_dnd"
        private const val KEY_PREVIOUS = "previous"
        private const val KEY_SET = "set"

        private fun nm(c: Context) = c.getSystemService(NotificationManager::class.java)

        fun enable(c: Context, untilMs: Long?): Boolean {
            val nm = nm(c)
            if (!nm.isNotificationPolicyAccessGranted) return false
            val prefs = c.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
            val current = nm.currentInterruptionFilter
            // Keep the original mode across back-to-back sessions.
            if (!prefs.contains(KEY_PREVIOUS)) {
                if (current != NotificationManager.INTERRUPTION_FILTER_ALL) return true // already quiet: the user's choice
                prefs.edit().putInt(KEY_PREVIOUS, current).apply()
            }
            return try {
                nm.setInterruptionFilter(NotificationManager.INTERRUPTION_FILTER_PRIORITY)
                prefs.edit().putInt(KEY_SET, NotificationManager.INTERRUPTION_FILTER_PRIORITY).apply()
                if (untilMs != null) scheduleRestore(c, untilMs)
                true
            } catch (_: Exception) {
                prefs.edit().clear().apply()
                false
            }
        }

        fun restore(c: Context) {
            val prefs = c.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
            if (!prefs.contains(KEY_PREVIOUS)) return
            val previous = prefs.getInt(KEY_PREVIOUS, NotificationManager.INTERRUPTION_FILTER_ALL)
            val set = prefs.getInt(KEY_SET, -1)
            prefs.edit().clear().apply()
            cancelRestore(c)
            val nm = nm(c)
            try {
                if (nm.isNotificationPolicyAccessGranted && nm.currentInterruptionFilter == set) {
                    nm.setInterruptionFilter(previous)
                }
            } catch (_: Exception) {}
        }

        private fun pending(c: Context) = PendingIntent.getBroadcast(
            c, 4311, Intent(c, DndRestoreReceiver::class.java),
            PendingIntent.FLAG_UPDATE_CURRENT or PendingIntent.FLAG_IMMUTABLE,
        )

        private fun scheduleRestore(c: Context, atMs: Long) {
            val am = c.getSystemService(AlarmManager::class.java) ?: return
            // Inexact is fine: within a few minutes of the phase end.
            try { am.setAndAllowWhileIdle(AlarmManager.RTC_WAKEUP, atMs, pending(c)) } catch (_: Exception) {}
        }

        private fun cancelRestore(c: Context) {
            c.getSystemService(AlarmManager::class.java)?.cancel(pending(c))
        }
    }
}

/** Restores the mode at the end of a phase while the app is not running. */
class DndRestoreReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent) = DndBridge.restore(context)
}
