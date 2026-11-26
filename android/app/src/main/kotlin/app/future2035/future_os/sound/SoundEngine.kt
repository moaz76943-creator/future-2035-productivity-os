package app.future2035.future_os.sound

import android.content.Context
import android.media.AudioAttributes
import android.media.AudioFocusRequest
import android.media.AudioFormat
import android.media.AudioManager
import android.media.AudioTrack
import android.os.Build
import android.os.Handler
import android.os.Looper
import android.os.Process
import java.util.concurrent.CopyOnWriteArrayList

/**
 * Plays the nature sounds (real recordings and noise colours, see [Mixer]) through one AudioTrack on a
 * dedicated audio thread. The thread exists only while sound is audible: after
 * a pause fades out, the track is released and the thread ends, so nothing
 * keeps running or holds memory when idle.
 *
 * Handles audio focus (pauses for calls and other players, resumes after a
 * transient loss) and a sleep timer that fades out before stopping.
 */
object SoundEngine {
    private const val FRAMES = 1024
    private const val SLEEP_FADE_MS = 45_000L // long, gentle fade before sleep

    @Volatile private var samples: AssetSamples? = null
    private val mixer = Mixer(SampleVoice.Source { id -> samples?.load(id) })
    private val lock = Object()
    private val main = Handler(Looper.getMainLooper())
    private val listeners = CopyOnWriteArrayList<() -> Unit>()

    private var app: Context? = null
    private var thread: Thread? = null
    private var alive = false
    private var focusRequest: AudioFocusRequest? = null
    private var resumeOnFocus = false

    /** Playing (or fading in); false when paused or stopped. */
    @Volatile var playing = false
        private set

    /** Wall-clock time (ms) the sleep timer ends, 0 when off. */
    @Volatile var sleepEndsAt = 0L
        private set

    fun init(context: Context) {
        if (app == null) app = context.applicationContext
        if (samples == null) samples = AssetSamples(context)
        MusicTrack.init(context)
        MusicTrack.onChange = { changed() }
    }

    fun addListener(l: () -> Unit) = listeners.add(l)
    fun removeListener(l: () -> Unit) = listeners.remove(l)
    private fun changed() = main.post { listeners.forEach { it() } }

    fun volumes(): Map<String, Float> = mixer.volumes()
    fun isEmpty(): Boolean = mixer.isEmpty() && !MusicTrack.has()

    /** Sets one sound's volume (0 removes it). False when the mix is full. */
    fun setVolume(id: String, volume: Float): Boolean {
        val ok = mixer.setVolume(id, volume)
        if (isEmpty() && playing) stop() else changed()
        return ok
    }

    fun play() {
        if (isEmpty()) return
        if (!requestFocus()) return
        synchronized(lock) {
            playing = true
            mixer.fadeMaster(true, 1.5f)
            if (!alive && !mixer.isEmpty()) startThread()
        }
        MusicTrack.play()
        changed()
    }

    fun pause(fadeSeconds: Float = 0.6f) {
        synchronized(lock) {
            playing = false
            mixer.fadeMaster(false, fadeSeconds)
        }
        MusicTrack.pause()
        changed()
    }

    /** Pauses and forgets the mix and the sleep timer. */
    fun stop() {
        cancelSleep(notify = false)
        pause()
        abandonFocus()
        resumeOnFocus = false
        // Clear once the fade has finished (the thread exits when silent).
        main.postDelayed({ if (!playing) mixer.clear(); changed() }, 900)
    }

    /** Sleep timer in minutes (0 turns it off). Fades out gently over the last 45 seconds. */
    fun sleep(minutes: Int) {
        cancelSleep(notify = false)
        if (minutes > 0) {
            val ms = minutes * 60_000L
            sleepEndsAt = System.currentTimeMillis() + ms
            main.postDelayed(sleepFade, (ms - SLEEP_FADE_MS).coerceAtLeast(0))
            main.postDelayed(sleepStop, ms)
        }
        changed()
    }

    private val sleepFade = Runnable {
        synchronized(lock) { mixer.fadeMaster(false, SLEEP_FADE_MS / 1000f) }
        MusicTrack.fadeOut(SLEEP_FADE_MS / 1000f)
    }
    private val sleepStop = Runnable {
        sleepEndsAt = 0L
        synchronized(lock) { playing = false }
        MusicTrack.pause()
        abandonFocus()
        changed()
    }

    private fun cancelSleep(notify: Boolean) {
        main.removeCallbacks(sleepFade)
        main.removeCallbacks(sleepStop)
        sleepEndsAt = 0L
        if (notify) changed()
    }

    private fun startThread() {
        alive = true
        thread = Thread({ loop() }, "nature-sounds").also { it.start() }
    }

    private fun loop() {
        Process.setThreadPriority(Process.THREAD_PRIORITY_AUDIO)
        val track = try {
            buildTrack()
        } catch (e: Exception) {
            null
        }
        if (track == null) {
            synchronized(lock) {
                alive = false
                playing = false
            }
            changed()
            return
        }
        val buf = ShortArray(FRAMES * 2)
        try {
            track.play()
            while (true) {
                mixer.render(buf, FRAMES)
                if (track.write(buf, 0, buf.size) < 0) break
                synchronized(lock) {
                    if (!playing && mixer.silent()) {
                        alive = false
                        return@synchronized
                    }
                }
                if (!alive) break
            }
        } catch (e: Exception) {
            // Output device gone: stop cleanly below.
        } finally {
            try { track.stop() } catch (_: Exception) {}
            track.release()
            synchronized(lock) {
                if (alive) {
                    // Ended by an error while still meant to play.
                    alive = false
                    playing = false
                }
            }
            changed()
        }
    }

    private fun attributes(): AudioAttributes = AudioAttributes.Builder()
        .setUsage(AudioAttributes.USAGE_MEDIA)
        .setContentType(AudioAttributes.CONTENT_TYPE_UNKNOWN)
        .build()

    private fun buildTrack(): AudioTrack {
        val min = AudioTrack.getMinBufferSize(Dsp.SR, AudioFormat.CHANNEL_OUT_STEREO, AudioFormat.ENCODING_PCM_16BIT)
        val size = maxOf(min, FRAMES * 4 * 4)
        return AudioTrack.Builder()
            .setAudioAttributes(attributes())
            .setAudioFormat(
                AudioFormat.Builder()
                    .setSampleRate(Dsp.SR)
                    .setEncoding(AudioFormat.ENCODING_PCM_16BIT)
                    .setChannelMask(AudioFormat.CHANNEL_OUT_STEREO)
                    .build()
            )
            .setBufferSizeInBytes(size)
            .setTransferMode(AudioTrack.MODE_STREAM)
            .build()
    }

    private val focusListener = AudioManager.OnAudioFocusChangeListener { change ->
        when (change) {
            AudioManager.AUDIOFOCUS_LOSS -> {
                resumeOnFocus = false
                pause()
            }
            AudioManager.AUDIOFOCUS_LOSS_TRANSIENT,
            AudioManager.AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK -> if (playing) {
                resumeOnFocus = true
                pause()
            }
            AudioManager.AUDIOFOCUS_GAIN -> if (resumeOnFocus) {
                resumeOnFocus = false
                play()
            }
        }
    }

    private fun audioManager(): AudioManager? = app?.getSystemService(Context.AUDIO_SERVICE) as? AudioManager

    private fun requestFocus(): Boolean {
        val am = audioManager() ?: return true
        val result = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            val req = focusRequest ?: AudioFocusRequest.Builder(AudioManager.AUDIOFOCUS_GAIN)
                .setAudioAttributes(attributes())
                .setOnAudioFocusChangeListener(focusListener, main)
                .setWillPauseWhenDucked(true)
                .build().also { focusRequest = it }
            am.requestAudioFocus(req)
        } else {
            @Suppress("DEPRECATION")
            am.requestAudioFocus(focusListener, AudioManager.STREAM_MUSIC, AudioManager.AUDIOFOCUS_GAIN)
        }
        return result == AudioManager.AUDIOFOCUS_REQUEST_GRANTED
    }

    private fun abandonFocus() {
        val am = audioManager() ?: return
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
            focusRequest?.let { am.abandonAudioFocusRequest(it) }
        } else {
            @Suppress("DEPRECATION")
            am.abandonAudioFocus(focusListener)
        }
    }

    /** Remaining sleep time in ms (0 when off). */
    fun sleepRemaining(): Long = if (sleepEndsAt == 0L) 0L else (sleepEndsAt - System.currentTimeMillis()).coerceAtLeast(0L)
}
