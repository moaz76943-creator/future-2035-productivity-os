package app.future2035.future_os.guard

import android.accessibilityservice.AccessibilityService
import android.content.Intent
import android.os.SystemClock
import android.provider.Settings
import android.view.accessibility.AccessibilityEvent
import android.view.inputmethod.InputMethodManager
import android.widget.Toast
import java.util.Calendar

/**
 * Distraction guard. Uses the accessibility API only to read which app is in
 * front (and, for the Shorts/Reels option, whether a short-video player is on
 * screen). It never reads text, never stores what it sees and sends nothing
 * anywhere: everything is decided on the phone from [GuardRules].
 */
class GuardService : AccessibilityService() {
    private var lastPauseAt = 0L
    private var lastShortsCheck = 0L
    private var exempt: Set<String> = emptySet()

    override fun onServiceConnected() {
        super.onServiceConnected()
        exempt = exemptPackages()
    }

    override fun onAccessibilityEvent(event: AccessibilityEvent?) {
        val e = event ?: return
        val pkg = e.packageName?.toString() ?: return
        if (pkg in exempt) return
        val rules = GuardRules.load(this)
        if (!rules.enabled) return
        when (e.eventType) {
            AccessibilityEvent.TYPE_WINDOW_STATE_CHANGED -> {
                if (rules.shorts && pkg in SHORTS) checkShorts(pkg, rules)
                maybePause(pkg, rules)
            }
            AccessibilityEvent.TYPE_WINDOW_CONTENT_CHANGED ->
                if (rules.shorts && pkg in SHORTS) checkShorts(pkg, rules)
        }
    }

    private fun maybePause(pkg: String, rules: GuardRules) {
        if (!rules.guards(pkg)) return
        // Only real apps from the launcher: never overlays, keyboards or system parts.
        if (packageManager.getLaunchIntentForPackage(pkg) == null) return
        if (!rules.isGuardTime(Calendar.getInstance(), GuardRules.until(this))) return
        if (!rules.strict && GuardRules.hasPass(this, pkg)) return
        val now = SystemClock.elapsedRealtime()
        if (now - lastPauseAt < 1500) return
        lastPauseAt = now
        startActivity(
            Intent(this, PauseActivity::class.java)
                .putExtra(PauseActivity.EXTRA_PACKAGE, pkg)
                .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TOP),
        )
    }

    /** Best effort: the players' view ids are not a public API and may change. */
    private fun checkShorts(pkg: String, rules: GuardRules) {
        val now = SystemClock.elapsedRealtime()
        if (now - lastShortsCheck < 700) return
        lastShortsCheck = now
        val root = try { rootInActiveWindow } catch (e: Exception) { null } ?: return
        val found = SHORTS[pkg].orEmpty().any { id ->
            try { root.findAccessibilityNodeInfosByViewId("$pkg:id/$id").isNotEmpty() } catch (e: Exception) { false }
        }
        if (!found) return
        performGlobalAction(AccessibilityService.GLOBAL_ACTION_BACK)
        Toast.makeText(this, rules.text("shortsBlocked", "Short videos are off"), Toast.LENGTH_SHORT).show()
    }

    /** This app, the home screen, keyboards, settings, the phone app and system UI. */
    private fun exemptPackages(): Set<String> {
        val set = mutableSetOf(packageName, "com.android.systemui", "com.android.settings", "android")
        fun resolve(i: Intent) = packageManager.queryIntentActivities(i, 0).map { it.activityInfo.packageName }
        set += resolve(Intent(Intent.ACTION_MAIN).addCategory(Intent.CATEGORY_HOME))
        set += resolve(Intent(Intent.ACTION_DIAL))
        set += resolve(Intent(Settings.ACTION_SETTINGS))
        val imm = getSystemService(InputMethodManager::class.java)
        imm?.enabledInputMethodList?.forEach { set += it.packageName }
        return set
    }

    override fun onInterrupt() {}

    companion object {
        /** Short-video players: package to view ids of the full-screen feed. */
        val SHORTS = mapOf(
            "com.google.android.youtube" to listOf("reel_recycler", "reel_player_page_container", "shorts_container"),
            "com.instagram.android" to listOf("clips_viewer_view_pager", "clips_viewer_container", "clips_video_container"),
            "com.facebook.katana" to listOf("reels_viewer_container", "video_container_reels"),
            "com.snapchat.android" to listOf("spotlight_container"),
        )
    }
}
