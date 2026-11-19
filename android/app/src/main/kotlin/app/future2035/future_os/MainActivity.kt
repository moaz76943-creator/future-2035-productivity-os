package app.future2035.future_os

import android.media.MediaPlayer
import android.os.Bundle
import android.speech.tts.TextToSpeech
import android.speech.tts.UtteranceProgressListener
import com.google.android.play.core.integrity.IntegrityManagerFactory
import com.google.android.play.core.integrity.IntegrityTokenRequest
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import java.util.Locale

/**
 * Native Android Text-to-Speech on channel `future_os/tts` (no paid or network service).
 * Every call answers instead of throwing, so flashcards keep working when no engine,
 * voice or language data is installed.
 *
 * Play Integrity on channel `future_os/integrity` for device/app attestation.
 */
class MainActivity : FlutterActivity() {
    private var tts: TextToSpeech? = null
    private var player: MediaPlayer? = null
    private var ready = false
    private var failed = false
    private val waiting = mutableListOf<() -> Unit>()

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        // Existing TTS channel
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "future_os/tts").setMethodCallHandler { call, result ->
            when (call.method) {
                "speak" -> {
                    val text = call.argument<String>("text").orEmpty().take(TextToSpeech.getMaxSpeechInputLength())
                    val tag = call.argument<String>("languageTag")
                    val rate = (call.argument<Double>("rate") ?: 1.0).toFloat().coerceIn(0.25f, 3f)
                    val pitch = (call.argument<Double>("pitch") ?: 1.0).toFloat().coerceIn(0.5f, 2f)
                    val repeat = (call.argument<Int>("repeat") ?: 1).coerceIn(1, 9)
                    val voiceName = call.argument<String>("voice")
                    if (text.isBlank()) { result.success("empty"); return@setMethodCallHandler }
                    withEngine { engine ->
                        if (engine == null) { result.success("unavailable"); return@withEngine }
                        if (tag != null) {
                            val wanted = Locale.forLanguageTag(tag)
                            var lang = engine.setLanguage(wanted)
                            // Fallback within the same language only (es-MX -> es); never another language.
                            if ((lang == TextToSpeech.LANG_MISSING_DATA || lang == TextToSpeech.LANG_NOT_SUPPORTED) &&
                                wanted.country.isNotEmpty()) {
                                lang = engine.setLanguage(Locale(wanted.language))
                            }
                            if (lang == TextToSpeech.LANG_MISSING_DATA || lang == TextToSpeech.LANG_NOT_SUPPORTED) {
                                result.success("language_unavailable"); return@withEngine
                            }
                        }
                        if (!voiceName.isNullOrEmpty()) {
                            // A chosen voice is used only if it still exists and speaks this language.
                            val v = try { engine.voices?.firstOrNull { it.name == voiceName } } catch (e: Exception) { null }
                            if (v != null && (tag == null || v.locale.language == Locale.forLanguageTag(tag).language)) {
                                engine.voice = v
                            }
                        }
                        engine.setSpeechRate(rate)
                        engine.setPitch(pitch)
                        var code = engine.speak(text, TextToSpeech.QUEUE_FLUSH, Bundle(), "future_os_tts_0")
                        for (i in 1 until repeat) {
                            if (code != TextToSpeech.SUCCESS) break
                            engine.playSilentUtterance(700, TextToSpeech.QUEUE_ADD, "future_os_gap_$i")
                            code = engine.speak(text, TextToSpeech.QUEUE_ADD, Bundle(), "future_os_tts_$i")
                        }
                        result.success(if (code == TextToSpeech.SUCCESS) "ok" else "unavailable")
                    }
                }
                "stop" -> { tts?.stop(); result.success(null) }
                "voices" -> withEngine { engine ->
                    if (engine == null) { result.success(emptyList<Map<String, Any>>()); return@withEngine }
                    val list = try { engine.voices?.toList() ?: emptyList() } catch (e: Exception) { emptyList() }
                    result.success(list.sortedBy { it.name }.map { v ->
                        mapOf(
                            "name" to v.name,
                            "locale" to v.locale.toLanguageTag(),
                            "network" to v.isNetworkConnectionRequired,
                            "quality" to v.quality,
                            "notInstalled" to v.features.contains(TextToSpeech.Engine.KEY_FEATURE_NOT_INSTALLED),
                        )
                    })
                }
                else -> result.notImplemented()
            }
        }
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "future_os/audio").setMethodCallHandler { call, result ->
            when (call.method) {
                "play" -> playAudio(call.argument<String>("path"), result)
                "stop" -> { stopAudio(); result.success(null) }
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

    private fun stopAudio() {
        player?.let { try { it.stop() } catch (_: Exception) {}; it.release() }
        player = null
    }

    /** Lazily binds the engine once; later calls wait for the first init result. */
    private fun withEngine(block: (TextToSpeech?) -> Unit) {
        if (ready) { block(tts); return }
        if (failed) { block(null); return }
        waiting.add { block(if (ready) tts else null) }
        if (tts != null) return
        tts = TextToSpeech(this) { status ->
            runOnUiThread {
                ready = status == TextToSpeech.SUCCESS
                failed = !ready
                if (failed) { tts?.shutdown(); tts = null }
                tts?.setOnUtteranceProgressListener(object : UtteranceProgressListener() {
                    override fun onStart(utteranceId: String?) {}
                    override fun onDone(utteranceId: String?) {}
                    @Deprecated("Deprecated in Java")
                    override fun onError(utteranceId: String?) {}
                })
                val pending = waiting.toList()
                waiting.clear()
                pending.forEach { it() }
            }
        }
    }

    override fun onDestroy() {
        stopAudio()
        tts?.stop()
        tts?.shutdown()
        tts = null
        super.onDestroy()
    }
}
