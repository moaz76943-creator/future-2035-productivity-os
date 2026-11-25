package app.future2035.future_os

import android.Manifest
import android.content.pm.PackageManager
import android.media.MediaPlayer
import android.media.MediaRecorder
import android.os.Build
import com.google.android.play.core.integrity.IntegrityManagerFactory
import com.google.android.play.core.integrity.IntegrityTokenRequest
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import app.future2035.future_os.sound.SoundscapeChannel
import app.future2035.future_os.speech.TtsBridge

/**
 * Hosts the native bridges: speech (speech/TtsBridge), app icon shortcuts
 * (ShortcutsBridge), nature sounds
 * (sound/SoundscapeChannel), card audio playback and recording, and
 *
 * Play Integrity on channel `future_os/integrity` for device/app attestation.
 */
class MainActivity : FlutterActivity() {
    private var player: MediaPlayer? = null
    private var recorder: MediaRecorder? = null
    private var recordFile: java.io.File? = null
    private var pendingRecord: MethodChannel.Result? = null
    private var soundscape: SoundscapeChannel? = null
    private var speech: TtsBridge? = null
    private var shortcuts: ShortcutsBridge? = null
    private var dnd: DndBridge? = null
    private var care: PhoneCare? = null
    private var focusTools: FocusTools? = null
    private var homeWidget: MethodChannel? = null
    private var pdf: PdfExport? = null
    private var images: ImageShrink? = null
    private var pendingSpeech: MethodChannel.Result? = null

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        // Nature sounds (playback lives in SoundEngine / SoundscapeService).
        soundscape?.detach()
        soundscape = SoundscapeChannel(applicationContext, flutterEngine.dartExecutor.binaryMessenger)

        // Phone text-to-speech for flashcards (all installed languages).
        speech?.dispose()
        speech = TtsBridge(this, flutterEngine.dartExecutor.binaryMessenger)

        // Long-press shortcuts on the app icon.
        shortcuts?.dispose()
        shortcuts = ShortcutsBridge(this, flutterEngine.dartExecutor.binaryMessenger)

        // Do Not Disturb during focus sessions.
        dnd?.dispose()
        dnd = DndBridge(applicationContext, flutterEngine.dartExecutor.binaryMessenger)

        // Battery, free space and system screens.
        care?.dispose()
        care = PhoneCare(applicationContext, flutterEngine.dartExecutor.binaryMessenger)

        // Immersive focus: keep the screen on, face-down detection.
        focusTools?.dispose()
        focusTools = FocusTools(this, flutterEngine.dartExecutor.binaryMessenger)

        // Home screen widget texts.
        homeWidget?.setMethodCallHandler(null)
        homeWidget = HomeWidgetProvider.bind(applicationContext, flutterEngine.dartExecutor.binaryMessenger)

        // PDF export of notes, tasks and decks.
        pdf?.dispose()
        pdf = PdfExport(flutterEngine.dartExecutor.binaryMessenger)

        // Pictures in notes: upright, scaled, JPEG.
        images?.dispose()
        images = ImageShrink(flutterEngine.dartExecutor.binaryMessenger)

        // Voice typing through the phone's speech screen (no microphone permission here).
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "future_os/speech_input").setMethodCallHandler { call, result ->
            if (call.method == "listen") listenSpeech(call.argument<String>("lang"), call.argument<String>("prompt"), result)
            else result.notImplemented()
        }

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "future_os/audio").setMethodCallHandler { call, result ->
            when (call.method) {
                "play" -> playAudio(call.argument<String>("path"), result)
                "playTone" -> playTone(call.argument<String>("name"), result)
                "stop" -> { stopAudio(); result.success(null) }
                "recordStart" -> recordStart(result)
                "recordStop" -> result.success(recordStop(keep = true))
                "recordCancel" -> { recordStop(keep = false); result.success(null) }
                else -> result.notImplemented()
            }
        }

        // Play Integrity channel
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "future_os/integrity").setMethodCallHandler { call, result ->
            when (call.method) {
                "requestIntegrityToken" -> {
                    val nonce = call.argument<String>("nonce")
                    if (nonce.isNullOrBlank()) {
                        result.error("INVALID_NONCE", "Nonce is required", null)
                        return@setMethodCallHandler
                    }
                    try {
                        val integrityManager = IntegrityManagerFactory.create(applicationContext)
                        val tokenRequest = IntegrityTokenRequest.builder()
                            .setNonce(nonce)
                            .build()
                        integrityManager.requestIntegrityToken(tokenRequest)
                            .addOnSuccessListener { response ->
                                result.success(response.token())
                            }
                            .addOnFailureListener { e ->
                                result.error("INTEGRITY_FAILED", e.message ?: "Unknown", null)
                            }
                    } catch (e: Exception) {
                        result.error("INTEGRITY_ERROR", e.message ?: "Exception", null)
                    }
                }
                else -> result.notImplemented()
            }
        }
    }

    private fun listenSpeech(lang: String?, prompt: String?, result: MethodChannel.Result) {
        if (pendingSpeech != null) { result.success(null); return }
        val intent = android.content.Intent(android.speech.RecognizerIntent.ACTION_RECOGNIZE_SPEECH)
            .putExtra(android.speech.RecognizerIntent.EXTRA_LANGUAGE_MODEL, android.speech.RecognizerIntent.LANGUAGE_MODEL_FREE_FORM)
            .putExtra(android.speech.RecognizerIntent.EXTRA_MAX_RESULTS, 1)
        if (!lang.isNullOrBlank() && Regex("^[A-Za-z]{2,3}(-[A-Za-z0-9]{2,8})*$").matches(lang)) {
            intent.putExtra(android.speech.RecognizerIntent.EXTRA_LANGUAGE, lang)
        }
        if (!prompt.isNullOrBlank()) intent.putExtra(android.speech.RecognizerIntent.EXTRA_PROMPT, prompt.take(80))
        try {
            pendingSpeech = result
            @Suppress("DEPRECATION")
            startActivityForResult(intent, SPEECH_REQUEST)
        } catch (e: android.content.ActivityNotFoundException) {
            pendingSpeech = null
            result.success("unavailable")
        }
    }

    @Deprecated("Activity results for the speech screen")
    override fun onActivityResult(requestCode: Int, resultCode: Int, data: android.content.Intent?) {
        @Suppress("DEPRECATION")
        super.onActivityResult(requestCode, resultCode, data)
        if (requestCode != SPEECH_REQUEST) return
        val r = pendingSpeech ?: return
        pendingSpeech = null
        val text = if (resultCode == RESULT_OK) {
            data?.getStringArrayListExtra(android.speech.RecognizerIntent.EXTRA_RESULTS)?.firstOrNull()
        } else null
        r.success(text)
    }

    /** Plays a card's audio clip from the app cache. One clip at a time. */
    private fun playAudio(path: String?, result: MethodChannel.Result) {
        stopAudio()
        val file = path?.let { java.io.File(it) }
        // Only files the app itself wrote to its cache directory are played.
        if (file == null || !file.exists() || !file.canonicalPath.startsWith(cacheDir.canonicalPath)) {
            result.success("unavailable"); return
        }
        try {
            val p = MediaPlayer()
            p.setDataSource(file.path)
            p.setOnCompletionListener { it.release(); if (player === it) player = null }
            p.setOnErrorListener { mp, _, _ -> mp.release(); if (player === mp) player = null; true }
            p.prepare()
            p.start()
            player = p
            result.success("ok")
        } catch (e: Exception) {
            stopAudio()
            result.success("unavailable")
        }
    }

    /** Previews one of the app's own timer-end sounds (res/raw/alarm_*). */
    private fun playTone(name: String?, result: MethodChannel.Result) {
        stopAudio()
        val id = if (name != null && Regex("^alarm_[a-z]{1,20}$").matches(name)) {
            resources.getIdentifier(name, "raw", packageName)
        } else 0
        val p = if (id != 0) MediaPlayer.create(this, id) else null
        if (p == null) { result.success("unavailable"); return }
        p.setOnCompletionListener { it.release(); if (player === it) player = null }
        p.start()
        player = p
        result.success("ok")
    }

    private fun stopAudio() {
        player?.let { try { it.stop() } catch (_: Exception) {}; it.release() }
        player = null
    }

    /**
     * Records a card clip (AAC in MPEG-4) into the app cache, at most 5 minutes.
     * The microphone permission is asked only here, when the user taps Record.
     * Answers "ok", "denied" or "unavailable".
     */
    private fun recordStart(result: MethodChannel.Result) {
        if (checkSelfPermission(Manifest.permission.RECORD_AUDIO) != PackageManager.PERMISSION_GRANTED) {
            if (pendingRecord != null) { result.success("unavailable"); return }
            pendingRecord = result
            requestPermissions(arrayOf(Manifest.permission.RECORD_AUDIO), RECORD_REQUEST)
            return
        }
        result.success(beginRecording())
    }

    override fun onRequestPermissionsResult(requestCode: Int, permissions: Array<out String>, grantResults: IntArray) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults)
        if (requestCode != RECORD_REQUEST) return
        val r = pendingRecord ?: return
        pendingRecord = null
        val granted = grantResults.isNotEmpty() && grantResults[0] == PackageManager.PERMISSION_GRANTED
        r.success(if (granted) beginRecording() else "denied")
    }

    private fun beginRecording(): String {
        recordStop(keep = false)
        stopAudio()
        val file = java.io.File(cacheDir, "card_recording.m4a")
        return try {
            val r = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) MediaRecorder(this) else @Suppress("DEPRECATION") MediaRecorder()
            r.setAudioSource(MediaRecorder.AudioSource.MIC)
            r.setOutputFormat(MediaRecorder.OutputFormat.MPEG_4)
            r.setAudioEncoder(MediaRecorder.AudioEncoder.AAC)
            r.setAudioEncodingBitRate(64000)
            r.setAudioSamplingRate(44100)
            r.setMaxDuration(5 * 60 * 1000)
            r.setOutputFile(file.path)
            r.prepare()
            r.start()
            recorder = r
            recordFile = file
            "ok"
        } catch (e: Exception) {
            recordStop(keep = false)
            "unavailable"
        }
    }

    /** Stops recording; returns the file path when [keep] and something was recorded. */
    private fun recordStop(keep: Boolean): String? {
        val r = recorder
        recorder = null
        var ok = r != null
        if (r != null) {
            try { r.stop() } catch (_: Exception) { ok = false } // too short or already stopped at max duration
            r.release()
        }
        val file = recordFile
        recordFile = null
        if (keep && ok && file != null && file.exists() && file.length() > 0) return file.path
        file?.delete()
        return null
    }

    override fun onNewIntent(intent: android.content.Intent) {
        super.onNewIntent(intent)
        shortcuts?.onNewIntent(intent)
    }

    override fun cleanUpFlutterEngine(flutterEngine: FlutterEngine) {
        shortcuts?.dispose()
        shortcuts = null
        dnd?.dispose()
        dnd = null
        homeWidget?.setMethodCallHandler(null)
        homeWidget = null
        pdf?.dispose()
        pdf = null
        images?.dispose()
        images = null
        // The sounds may keep playing; only the bridge to this engine is dropped.
        soundscape?.detach()
        soundscape = null
        speech?.dispose()
        speech = null
        super.cleanUpFlutterEngine(flutterEngine)
    }

    override fun onDestroy() {
        recordStop(keep = false)
        stopAudio()
        speech?.dispose()
        speech = null
        focusTools?.dispose()
        focusTools = null
        super.onDestroy()
    }

    private companion object {
        const val RECORD_REQUEST = 4207
        const val SPEECH_REQUEST = 4208
    }
}
