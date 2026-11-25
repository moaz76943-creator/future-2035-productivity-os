package app.future2035.future_os.guard

import android.content.Context
import android.content.SharedPreferences
import org.json.JSONObject
import java.util.Calendar

/**
 * The distraction guard's settings, written by the Flutter side as one JSON
 * value (see lib/features/guard/domain/guard_config.dart, which mirrors
 * [isGuardTime]). Nothing leaves the phone.
 */
class GuardRules(json: String?) {
    private val j = try { JSONObject(json ?: "{}") } catch (e: Exception) { JSONObject() }

    val enabled = j.optBoolean("enabled", false)
    val strict = j.optBoolean("strict", false)
    val allowlist = j.optBoolean("allowlist", false)
    val shorts = j.optBoolean("shorts", false)
    val scheduleOn = j.optBoolean("scheduleOn", false)
    val days = j.optInt("days", 0x1F) // bit 0 = Monday … bit 6 = Sunday
    val start = j.optInt("start", 9 * 60)
    val end = j.optInt("end", 17 * 60)
    val apps: Set<String> = j.optJSONArray("apps")?.let { a ->
        (0 until a.length()).map { a.optString(it) }.toSet()
    } ?: emptySet()
    private val strings = j.optJSONObject("strings") ?: JSONObject()

    fun text(key: String, fallback: String): String = strings.optString(key, fallback).ifEmpty { fallback }

    /** True while a focus session runs ([untilMs] in the future) or inside the schedule. */
    fun isGuardTime(now: Calendar, untilMs: Long): Boolean {
        if (now.timeInMillis < untilMs) return true
        if (!scheduleOn) return false
        val day = (now.get(Calendar.DAY_OF_WEEK) + 5) % 7 // Monday = 0
        val minute = now.get(Calendar.HOUR_OF_DAY) * 60 + now.get(Calendar.MINUTE)
        fun on(d: Int) = days and (1 shl ((d + 7) % 7)) != 0
        return if (start <= end) {
            on(day) && minute >= start && minute < end
        } else {
            // Overnight, e.g. 22:00 to 06:00: the early hours belong to the day before.
            (on(day) && minute >= start) || (on(day - 1) && minute < end)
        }
    }

    /** Whether opening [pkg] should be paused. Exempt packages never are. */
    fun guards(pkg: String): Boolean = if (allowlist) pkg !in apps else pkg in apps

    companion object {
        private const val FILE = "deep_focus_guard"
        const val KEY_CONFIG = "config"
        const val KEY_UNTIL = "until"
        private const val PASS = "pass_"

        fun prefs(c: Context): SharedPreferences = c.getSharedPreferences(FILE, Context.MODE_PRIVATE)
        fun load(c: Context) = GuardRules(prefs(c).getString(KEY_CONFIG, null))
        fun until(c: Context) = prefs(c).getLong(KEY_UNTIL, 0L)

        /** "Open it anyway" in gentle mode: no pause for [pkg] for five minutes. */
        fun grantPass(c: Context, pkg: String) =
            prefs(c).edit().putLong(PASS + pkg, System.currentTimeMillis() + 5 * 60_000L).apply()

        fun hasPass(c: Context, pkg: String) = prefs(c).getLong(PASS + pkg, 0L) > System.currentTimeMillis()
    }
}
