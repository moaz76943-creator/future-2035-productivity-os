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
 * Hosts the native bridges: speech (speech/TtsBridge), nature sounds
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

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        // Nature sounds (playback lives in SoundEngine / SoundscapeService).
        soundscape?.detach()
        soundscape = SoundscapeChannel(applicationContext, flutterEngine.dartExecutor.binaryMessenger)

        // Phone text-to-speech for flashcards (all installed languages).
        speech?.dispose()
        speech = TtsBridge(this, flutterEngine.dartExecutor.binaryMessenger)

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

    override fun cleanUpFlutterEngine(flutterEngine: FlutterEngine) {
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
        super.onDestroy()
    }

    private companion object {
        const val RECORD_REQUEST = 4207
    }
}
