package app.future2035.future_os.sound

import android.content.Context
import android.media.AudioAttributes
import android.media.MediaPlayer
import android.net.Uri
import android.os.Handler
import android.os.Looper
import android.provider.OpenableColumns

/**
 * The person's own audio file (mp3, m4a, ogg, wav...) played under the nature sounds.
 *
 * The file is never copied or uploaded: only its content URI (with a persisted read
 * permission) is remembered, so it costs no storage and works offline. It loops,
 * follows the engine's play, pause, audio focus and sleep timer, and is forgotten
 * when it can no longer be read (moved or deleted).
 */
object MusicTrack {
    private const val PREFS = "soundscape_music"
    private val main = Handler(Looper.getMainLooper())
    private var app: Context? = null
    private var player: MediaPlayer? = null
    private var prepared = false
    private var wantPlay = false
    private var fade = 1f

    @Volatile var uri: String? = null
        private set
    @Volatile var name: String = ""
        private set
    @Volatile var volume: Float = 0.8f
        private set

    var onChange: () -> Unit = {}

    fun init(context: Context) {
        if (app != null) return
        app = context.applicationContext
        val p = context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
        uri = p.getString("uri", null)
        name = p.getString("name", "").orEmpty()
        volume = p.getFloat("volume", 0.8f)
    }

    fun has(): Boolean = uri != null
    fun isPlaying(): Boolean = try { player?.isPlaying == true } catch (_: Exception) { false }

    /** Remembers a newly picked file (the caller already took the persisted permission). */
    fun choose(value: Uri) {
        release()
        uri = value.toString()
        name = displayName(value)
        save()
        onChange()
    }

    fun clear() {
        release()
        uri = null
        name = ""
        save()
        onChange()
    }

    fun setVolume(v: Float) {
        volume = v.coerceIn(0f, 1f)
        apply()
        save()
        onChange()
    }

    fun play() {
        wantPlay = true
        fade = 1f
        main.removeCallbacks(fadeStep)
        val p = player ?: open() ?: return
        if (prepared && !p.isPlaying) p.start()
        apply()
    }

    fun pause() {
        wantPlay = false
        main.removeCallbacks(fadeStep)
        try { if (player?.isPlaying == true) player?.pause() } catch (_: Exception) {}
    }

    /** Lowers the volume to silence over [seconds] (used before the sleep timer stops). */
    fun fadeOut(seconds: Float) {
        val steps = (seconds.coerceAtLeast(1f)).toInt()
        val drop = 1f / steps
        fadeDrop = drop
        main.removeCallbacks(fadeStep)
        main.postDelayed(fadeStep, 1000)
    }

    private var fadeDrop = 0f
    private val fadeStep: Runnable = object : Runnable {
        override fun run() {
            fade = (fade - fadeDrop).coerceAtLeast(0f)
            apply()
            if (fade > 0f) main.postDelayed(this, 1000)
        }
    }

    private fun apply() {
        val v = volume * fade
        try { player?.setVolume(v, v) } catch (_: Exception) {}
    }

    private fun open(): MediaPlayer? {
        val ctx = app ?: return null
        val u = uri ?: return null
        return try {
            MediaPlayer().also { p ->
                p.setAudioAttributes(
                    AudioAttributes.Builder().setUsage(AudioAttributes.USAGE_MEDIA)
                        .setContentType(AudioAttributes.CONTENT_TYPE_MUSIC).build()
                )
                p.isLooping = true
                p.setDataSource(ctx, Uri.parse(u))
                p.setOnPreparedListener {
                    prepared = true
                    apply()
                    if (wantPlay) it.start()
                    onChange()
                }
                p.setOnErrorListener { _, _, _ -> main.post { clear() }; true }
                player = p
                prepared = false
                p.prepareAsync()
            }
        } catch (e: Exception) {
            // Moved, deleted or permission gone: forget it instead of failing every time.
            main.post { clear() }
            null
        }
    }

    private fun release() {
        main.removeCallbacks(fadeStep)
        try { player?.release() } catch (_: Exception) {}
        player = null
        prepared = false
    }

    private fun displayName(u: Uri): String {
        val raw = try {
            app?.contentResolver?.query(u, arrayOf(OpenableColumns.DISPLAY_NAME), null, null, null)?.use { c ->
                if (c.moveToFirst()) c.getString(0) else null
            }
        } catch (_: Exception) {
            null
        }
        return (raw ?: "").substringBeforeLast('.').take(80)
    }

    private fun save() {
        app?.getSharedPreferences(PREFS, Context.MODE_PRIVATE)?.edit()
            ?.putString("uri", uri)?.putString("name", name)?.putFloat("volume", volume)?.apply()
    }
}
