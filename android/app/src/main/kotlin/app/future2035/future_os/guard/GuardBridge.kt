package app.future2035.future_os.guard

import android.content.ComponentName
import android.content.Context
import android.content.Intent
import android.graphics.Bitmap
import android.graphics.Canvas
import android.os.Handler
import android.os.Looper
import android.provider.Settings
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodChannel
import java.io.ByteArrayOutputStream
import java.util.concurrent.Executors

/** Flutter side: lib/core/platform/distraction_guard.dart. */
class GuardBridge(private val context: Context, messenger: BinaryMessenger) {
    private val channel = MethodChannel(messenger, "future_os/guard")
    private val io = Executors.newSingleThreadExecutor()
    private val main = Handler(Looper.getMainLooper())

    init {
        channel.setMethodCallHandler { call, result ->
            when (call.method) {
                "enabled" -> result.success(serviceEnabled())
                "openSettings" -> {
                    context.startActivity(Intent(Settings.ACTION_ACCESSIBILITY_SETTINGS).addFlags(Intent.FLAG_ACTIVITY_NEW_TASK))
                    result.success(true)
                }
                "setConfig" -> {
                    GuardRules.prefs(context).edit().putString(GuardRules.KEY_CONFIG, call.argument<String>("json")).apply()
                    result.success(true)
                }
                "session" -> {
                    val until = (call.argument<Number>("until") ?: 0).toLong()
                    GuardRules.prefs(context).edit().putLong(GuardRules.KEY_UNTIL, until).apply()
                    result.success(true)
                }
                "stats" -> result.success(GuardRules.week(context))
                "apps" -> io.execute {
                    val list = try { launcherApps() } catch (e: Exception) { emptyList() }
                    main.post { result.success(list) }
                }
                else -> result.notImplemented()
            }
        }
    }

    private fun serviceEnabled(): Boolean {
        val me = ComponentName(context, GuardService::class.java).flattenToString()
        val on = Settings.Secure.getString(context.contentResolver, Settings.Secure.ENABLED_ACCESSIBILITY_SERVICES) ?: return false
        return on.split(':').any { it.equals(me, ignoreCase = true) }
    }

    private fun launcherApps(): List<Map<String, Any>> {
        val pm = context.packageManager
        val intent = Intent(Intent.ACTION_MAIN).addCategory(Intent.CATEGORY_LAUNCHER)
        return pm.queryIntentActivities(intent, 0)
            .map { it.activityInfo.applicationInfo }
            .distinctBy { it.packageName }
            .filter { it.packageName != context.packageName }
            .map { info ->
                mapOf(
                    "package" to info.packageName,
                    "label" to pm.getApplicationLabel(info).toString(),
                    "icon" to icon(pm.getApplicationIcon(info)),
                )
            }
            .sortedBy { (it["label"] as String).lowercase() }
    }

    private fun icon(d: android.graphics.drawable.Drawable): ByteArray {
        val size = 72
        val bmp = Bitmap.createBitmap(size, size, Bitmap.Config.ARGB_8888)
        d.setBounds(0, 0, size, size)
        d.draw(Canvas(bmp))
        val out = ByteArrayOutputStream()
        bmp.compress(Bitmap.CompressFormat.PNG, 100, out)
        bmp.recycle()
        return out.toByteArray()
    }

    fun dispose() {
        channel.setMethodCallHandler(null)
        io.shutdown()
    }
}
