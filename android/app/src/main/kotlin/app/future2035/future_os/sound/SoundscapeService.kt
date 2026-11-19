package app.future2035.future_os.sound

import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.app.PendingIntent
import android.app.Service
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.content.pm.ServiceInfo
import android.media.AudioManager
import android.os.Build
import android.os.Handler
import android.os.IBinder
import android.os.Looper
import app.future2035.future_os.R

/**
 * Keeps the nature sounds playing with the screen off or the app closed.
 * Foreground (media playback) while it runs, with a notification to pause,
 * resume or stop. Pauses when headphones are unplugged; ends itself after
 * 10 minutes of pause or when the mix is stopped, so it never lingers.
 * Notification texts come from the app (translated) through [labels].
 */
class SoundscapeService : Service() {
    companion object {
        private const val CHANNEL = "nature_sounds"
        private const val NOTIFICATION_ID = 7301
        private const val IDLE_STOP_MS = 10 * 60_000L
        const val ACTION_SHOW = "app.future2035.sounds.SHOW"
        const val ACTION_PAUSE = "app.future2035.sounds.PAUSE"
        const val ACTION_RESUME = "app.future2035.sounds.RESUME"
        const val ACTION_STOP = "app.future2035.sounds.STOP"

        /** Translated texts: title, channel, pause, resume, stop and "name.<id>". */
        @Volatile var labels: Map<String, String> = emptyMap()

        fun show(context: Context) {
            val i = Intent(context, SoundscapeService::class.java).setAction(ACTION_SHOW)
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) context.startForegroundService(i) else context.startService(i)
        }
    }

    private val main = Handler(Looper.getMainLooper())
    private val listener: () -> Unit = { refresh() }
    private val idleStop = Runnable { finish() }
    private var finished = false

    private val noisy = object : BroadcastReceiver() {
        override fun onReceive(context: Context?, intent: Intent?) {
            if (intent?.action == AudioManager.ACTION_AUDIO_BECOMING_NOISY) SoundEngine.pause()
        }
    }

    override fun onCreate() {
        super.onCreate()
        SoundEngine.init(this)
        SoundEngine.addListener(listener)
        val filter = IntentFilter(AudioManager.ACTION_AUDIO_BECOMING_NOISY)
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            registerReceiver(noisy, filter, Context.RECEIVER_NOT_EXPORTED)
        } else {
            registerReceiver(noisy, filter)
        }
        createChannel()
    }

    override fun onStartCommand(intent: Intent?, flags: Int, startId: Int): Int {
        // startForeground must follow startForegroundService promptly, whatever the action.
        if (intent?.action != ACTION_STOP) finished = false
        goForeground()
        when (intent?.action) {
            ACTION_PAUSE -> SoundEngine.pause()
            ACTION_RESUME -> SoundEngine.play()
            ACTION_STOP -> {
                SoundEngine.stop()
                finish()
            }
        }
        return START_NOT_STICKY
    }

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onDestroy() {
        SoundEngine.removeListener(listener)
        main.removeCallbacks(idleStop)
        try { unregisterReceiver(noisy) } catch (_: Exception) {}
        super.onDestroy()
    }

    private fun refresh() {
        if (finished) return
        if (SoundEngine.isEmpty()) {
            finish()
            return
        }
        main.removeCallbacks(idleStop)
        if (!SoundEngine.playing) main.postDelayed(idleStop, IDLE_STOP_MS)
        val nm = getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
        nm.notify(NOTIFICATION_ID, build())
    }

    private fun finish() {
        if (finished) return
        finished = true
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
            stopForeground(STOP_FOREGROUND_REMOVE)
        } else {
            @Suppress("DEPRECATION")
            stopForeground(true)
        }
        stopSelf()
    }

    private fun goForeground() {
        val n = build()
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
            startForeground(NOTIFICATION_ID, n, ServiceInfo.FOREGROUND_SERVICE_TYPE_MEDIA_PLAYBACK)
        } else {
            startForeground(NOTIFICATION_ID, n)
        }
    }

    private fun label(key: String, fallback: String) = labels[key]?.takeIf { it.isNotBlank() } ?: fallback

    private fun createChannel() {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.O) return
        val nm = getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
        val ch = NotificationChannel(CHANNEL, label("channel", "Nature sounds"), NotificationManager.IMPORTANCE_LOW)
        ch.setShowBadge(false)
        ch.setSound(null, null)
        nm.createNotificationChannel(ch)
    }

    private fun action(action: String): PendingIntent = PendingIntent.getService(
        this, action.hashCode(), Intent(this, SoundscapeService::class.java).setAction(action),
        PendingIntent.FLAG_IMMUTABLE or PendingIntent.FLAG_UPDATE_CURRENT
    )

    @Suppress("DEPRECATION")
    private fun build(): Notification {
        val b = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) Notification.Builder(this, CHANNEL) else Notification.Builder(this)
        val names = SoundEngine.volumes().keys.joinToString(" · ") { label("name.$it", it) }
        val playing = SoundEngine.playing
        b.setSmallIcon(R.drawable.ic_stat_notify)
            .setContentTitle(label("title", "Nature sounds"))
            .setContentText(names)
            .setOngoing(true)
            .setOnlyAlertOnce(true)
            .setCategory(Notification.CATEGORY_TRANSPORT)
            .setVisibility(Notification.VISIBILITY_PUBLIC)
            .setStyle(Notification.MediaStyle().setShowActionsInCompactView(0, 1))
        packageManager.getLaunchIntentForPackage(packageName)?.let {
            b.setContentIntent(PendingIntent.getActivity(this, 0, it, PendingIntent.FLAG_IMMUTABLE))
        }
        val sleep = SoundEngine.sleepEndsAt
        if (sleep > 0 && Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
            b.setWhen(sleep).setShowWhen(true).setUsesChronometer(true).setChronometerCountDown(true)
        } else {
            b.setShowWhen(false)
        }
        if (playing) {
            b.addAction(Notification.Action.Builder(android.R.drawable.ic_media_pause, label("pause", "Pause"), action(ACTION_PAUSE)).build())
        } else {
            b.addAction(Notification.Action.Builder(android.R.drawable.ic_media_play, label("resume", "Play"), action(ACTION_RESUME)).build())
        }
        b.addAction(Notification.Action.Builder(android.R.drawable.ic_menu_close_clear_cancel, label("stop", "Stop"), action(ACTION_STOP)).build())
        return b.build()
    }
}
