package app.future2035.future_os.guard

import android.animation.ValueAnimator
import android.app.Activity
import android.content.Intent
import android.graphics.Color
import android.graphics.drawable.GradientDrawable
import android.os.Build
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.util.TypedValue
import android.view.Gravity
import android.view.KeyEvent
import android.view.View
import android.view.animation.AccelerateDecelerateInterpolator
import android.widget.Button
import android.widget.LinearLayout
import android.widget.TextView
import app.future2035.future_os.MainActivity

/**
 * The intentional pause shown over a guarded app. Gentle: five seconds of slow
 * breathing, then "Do you need this app now?" with Back to focus or Open for
 * five minutes. Strict: the app stays closed until the session or schedule ends.
 * Plain views (no Flutter engine) so it appears at once.
 */
class PauseActivity : Activity() {
    private val main = Handler(Looper.getMainLooper())
    private var breath: ValueAnimator? = null
    private lateinit var target: String

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        target = intent.getStringExtra(EXTRA_PACKAGE) ?: ""
        val rules = GuardRules.load(this)
        val night = Color.rgb(10, 12, 16)
        window.statusBarColor = night
        window.navigationBarColor = night

        val root = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            gravity = Gravity.CENTER
            setBackgroundColor(night)
            setPadding(dp(32), dp(48), dp(32), dp(48))
        }
        val orb = View(this).apply {
            background = GradientDrawable().apply {
                shape = GradientDrawable.OVAL
                setColor(Color.argb(70, 120, 170, 255))
                setStroke(dp(2), Color.argb(160, 160, 200, 255))
            }
        }
        root.addView(orb, LinearLayout.LayoutParams(dp(140), dp(140)).apply { bottomMargin = dp(36) })
        val title = text(rules.text("breathe", "Breathe in… and out"), 22f, 0.95f)
        root.addView(title)
        val question = text(
            if (rules.strict) rules.text("strictBody", "This app is paused until your focus time ends.")
            else rules.text("question", "Do you need this app now?"),
            17f, 0.7f,
        )
        question.visibility = if (rules.strict) View.VISIBLE else View.INVISIBLE
        root.addView(question, wrap().apply { topMargin = dp(14) })

        val back = button(rules.text("back", "Back to focus"), filled = true) { backToFocus() }
        val open = button(rules.text("open", "Open for 5 minutes"), filled = false) {
            GuardRules.grantPass(this, target)
            packageManager.getLaunchIntentForPackage(target)?.let { startActivity(it) }
            finish()
        }
        open.visibility = View.GONE
        back.visibility = if (rules.strict) View.VISIBLE else View.INVISIBLE
        root.addView(back, wide().apply { topMargin = dp(40) })
        root.addView(open, wide().apply { topMargin = dp(10) })
        setContentView(root)

        breath = ValueAnimator.ofFloat(0.72f, 1f).apply {
            duration = 2500
            repeatMode = ValueAnimator.REVERSE
            repeatCount = ValueAnimator.INFINITE
            interpolator = AccelerateDecelerateInterpolator()
            addUpdateListener { orb.scaleX = it.animatedValue as Float; orb.scaleY = orb.scaleX }
            start()
        }
        if (Build.VERSION.SDK_INT >= 33) {
            // Predictive back is on for the app, so onBackPressed is not called on 13+.
            onBackInvokedDispatcher.registerOnBackInvokedCallback(0) { backToFocus() }
        }
        if (!rules.strict) {
            main.postDelayed({
                question.visibility = View.VISIBLE
                back.visibility = View.VISIBLE
                open.visibility = View.VISIBLE
            }, 5000)
        }
    }

    private fun backToFocus() {
        startActivity(Intent(this, MainActivity::class.java).addFlags(Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_REORDER_TO_FRONT))
        finish()
    }

    /** Android 12 and older: Back leads to focus, never into the paused app. */
    override fun onKeyDown(keyCode: Int, event: KeyEvent?): Boolean {
        if (keyCode == KeyEvent.KEYCODE_BACK) {
            backToFocus()
            return true
        }
        return super.onKeyDown(keyCode, event)
    }

    override fun onDestroy() {
        breath?.cancel()
        main.removeCallbacksAndMessages(null)
        super.onDestroy()
    }

    private fun dp(v: Int) = TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_DIP, v.toFloat(), resources.displayMetrics).toInt()
    private fun wrap() = LinearLayout.LayoutParams(LinearLayout.LayoutParams.WRAP_CONTENT, LinearLayout.LayoutParams.WRAP_CONTENT)
    private fun wide() = LinearLayout.LayoutParams(LinearLayout.LayoutParams.MATCH_PARENT, dp(52))

    private fun text(s: String, size: Float, alpha: Float) = TextView(this).apply {
        text = s
        textSize = size
        gravity = Gravity.CENTER
        setTextColor(Color.argb((alpha * 255).toInt(), 255, 255, 255))
    }

    private fun button(label: String, filled: Boolean, onClick: () -> Unit) = Button(this).apply {
        text = label
        isAllCaps = false
        textSize = 16f
        setTextColor(if (filled) Color.rgb(10, 12, 16) else Color.WHITE)
        background = GradientDrawable().apply {
            cornerRadius = dp(26).toFloat()
            if (filled) setColor(Color.WHITE) else setStroke(dp(1), Color.argb(120, 255, 255, 255))
        }
        setOnClickListener { onClick() }
    }

    companion object {
        const val EXTRA_PACKAGE = "package"
    }
}
