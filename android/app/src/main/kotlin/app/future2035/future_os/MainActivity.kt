package app.future2035.future_os

import android.os.Bundle
import android.speech.tts.TextToSpeech
import android.speech.tts.UtteranceProgressListener
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import java.util.Locale

/**
 * Native Android Text-to-Speech on channel `future_os/tts` (no paid or network service).
 * Every call answers instead of throwing, so flashcards keep working when no engine,
 * voice or language data is installed.
 */
class MainActivity : FlutterActivity() {
    private var tts: TextToSpeech? = null
    private var ready = false
    private var failed = false
    private val waiting = mutableListOf<() -> Unit>()

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, "future_os/tts").setMethodCallHandler { call, result ->
            when (call.method) {
                "speak" -> {
                    val text = call.argument<String>("text").orEmpty().take(TextToSpeech.getMaxSpeechInputLength())
                    val tag = call.argument<String>("languageTag")
                    val rate = (call.argument<Double>("rate") ?: 1.0).toFloat().coerceIn(0.25f, 3f)
                    val pitch = (call.argument<Double>("pitch") ?: 1.0).toFloat().coerceIn(0.5f, 2f)
                    val repeat = (call.argument<Int>("repeat") ?: 1).coerceIn(1, 9)
                    if (text.isBlank()) { result.success("empty"); return@setMethodCallHandler }
                    withEngine { engine ->
                        if (engine == null) { result.success("unavailable"); return@withEngine }
                        if (tag != null) {
                            val lang = engine.setLanguage(Locale.forLanguageTag(tag))
                            if (lang == TextToSpeech.LANG_MISSING_DATA || lang == TextToSpeech.LANG_NOT_SUPPORTED) {
                                result.success("language_unavailable"); return@withEngine
                            }
                        }
                        engine.setSpeechRate(rate)
                        engine.setPitch(pitch)
                        var code = engine.speak(text, TextToSpeech.QUEUE_FLUSH, Bundle(), "future_os_tts_0")
                        // Repetitions are queued natively with a short pause between them, so
                        // they play back-to-back and a later stop() cancels all of them.
                        for (i in 1 until repeat) {
                            if (code != TextToSpeech.SUCCESS) break
                            engine.playSilentUtterance(700, TextToSpeech.QUEUE_ADD, "future_os_gap_$i")
                            code = engine.speak(text, TextToSpeech.QUEUE_ADD, Bundle(), "future_os_tts_$i")
                        }
                        result.success(if (code == TextToSpeech.SUCCESS) "ok" else "unavailable")
                    }
                }
                "stop" -> { tts?.stop(); result.success(null) }
                else -> result.notImplemented()
            }
        }
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
        tts?.stop()
        tts?.shutdown()
        tts = null
        super.onDestroy()
    }
}
