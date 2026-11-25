package app.future2035.future_os

import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Build
import android.os.Environment
import android.os.PowerManager
import android.os.StatFs
import android.provider.Settings
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodChannel

/**
 * Phone care (channel `future_os/care`): who made the phone, whether the app
 * is exempt from battery saving, the free space, and shortcuts to the right
 * system screens. Nothing is changed here; the user does it in Settings.
 */
class PhoneCare(private val context: Context, messenger: BinaryMessenger) {
    private val channel = MethodChannel(messenger, "future_os/care")

    init {
        channel.setMethodCallHandler { call, result ->
            when (call.method) {
                "info" -> result.success(info())
                "openBattery" -> result.success(open(Settings.ACTION_IGNORE_BATTERY_OPTIMIZATION_SETTINGS))
                "openAppInfo" -> result.success(openAppInfo())
                "languageNames" -> result.success(
                    languageNames(
                        call.argument<List<String>>("codes") ?: emptyList(),
                        call.argument<String>("in") ?: "en",
                    ),
                )
                else -> result.notImplemented()
            }
        }
    }

    fun dispose() = channel.setMethodCallHandler(null)

    /** Each language's name written in the app language (from the phone's own locale data). */
    private fun languageNames(codes: List<String>, inTag: String): Map<String, String> {
        val inLocale = java.util.Locale.forLanguageTag(inTag)
        return codes.associateWith { code ->
            try {
                java.util.Locale.forLanguageTag(code).getDisplayLanguage(inLocale)
            } catch (_: Exception) {
                ""
            }
        }
    }

    private fun info(): Map<String, Any> {
        val pm = context.getSystemService(Context.POWER_SERVICE) as PowerManager
        val free = try {
            StatFs(Environment.getDataDirectory().path).availableBytes
        } catch (_: Exception) {
            -1L
        }
        return mapOf(
            "manufacturer" to (Build.MANUFACTURER ?: ""),
            "unrestricted" to pm.isIgnoringBatteryOptimizations(context.packageName),
            "freeBytes" to free,
        )
    }

    private fun open(action: String): Boolean = try {
        context.startActivity(Intent(action).addFlags(Intent.FLAG_ACTIVITY_NEW_TASK))
        true
    } catch (_: Exception) {
        openAppInfo()
    }

    private fun openAppInfo(): Boolean = try {
        context.startActivity(
            Intent(Settings.ACTION_APPLICATION_DETAILS_SETTINGS, Uri.parse("package:" + context.packageName))
                .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK),
        )
        true
    } catch (_: Exception) {
        false
    }
}
