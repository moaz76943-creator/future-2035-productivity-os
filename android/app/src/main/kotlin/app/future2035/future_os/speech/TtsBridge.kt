package app.future2035.future_os.speech

import android.app.Activity
import android.content.ActivityNotFoundException
import android.content.Intent
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.speech.tts.TextToSpeech
import android.speech.tts.UtteranceProgressListener
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodChannel
import java.util.Locale

/**
 * The phone's own Text-to-Speech on channel `future_os/tts`, for every language
 * the installed engine supports. Every call answers instead of throwing, so
 * flashcards keep working when no engine, voice or language data exists.
 *
 * speak: repeats 1-9 times with a pause between repeats; with "await" it answers
 * only when speaking has finished ("ok") or was interrupted ("stopped"), which
 * the hands-free listen mode needs.
 */
class TtsBridge(private val activity: Activity, messenger: BinaryMessenger) {
    private val channel = MethodChannel(messenger, "future_os/tts")
    private val main = Handler(Looper.getMainLooper())
    private var tts: TextToSpeech? = null
    private var ready = false
    private var failed = false
    private val waiting = mutableListOf<() -> Unit>()

    /** Results waiting for the end of an utterance, by its id. */
    private val pending = mutableMapOf<String, MethodChannel.Result>()
    private var sequence = 0

    init {
        channel.setMethodCallHandler { call, result ->
            when (call.method) {
                "speak" -> speak(
                    text = call.argument<String>("text").orEmpty(),
                    tag = call.argument<String>("languageTag"),
                    rate = (call.argument<Double>("rate") ?: 1.0).toFloat().coerceIn(0.25f, 3f),
                    pitch = (call.argument<Double>("pitch") ?: 1.0).toFloat().coerceIn(0.5f, 2f),
                    repeat = (call.argument<Int>("repeat") ?: 1).coerceIn(1, 9),
                    pauseMs = (call.argument<Int>("pauseMs") ?: 700).coerceIn(0, 10_000).toLong(),
                    voiceName = call.argument<String>("voice"),
                    await = call.argument<Boolean>("await") == true,
                    result = result,
                )
                "stop" -> {
                    tts?.stop()
                    finishAll("stopped")
                    result.success(null)
                }
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
                "languages" -> withEngine { engine ->
                    val set = try { engine?.availableLanguages ?: emptySet() } catch (e: Exception) { emptySet() }
                    result.success(set.map { it.toLanguageTag() }.distinct().sorted())
                }
                "openSettings" -> result.success(openSettings())
                else -> result.notImplemented()
            }
        }
    }

    private fun speak(
        text: String, tag: String?, rate: Float, pitch: Float, repeat: Int, pauseMs: Long,
        voiceName: String?, await: Boolean, result: MethodChannel.Result,
    ) {
        if (text.isBlank()) { result.success("empty"); return }
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
            // A new request replaces the old one; anyone waiting on it is told so.
            finishAll("stopped")
            val run = ++sequence
            val clipped = text.take(TextToSpeech.getMaxSpeechInputLength())
            var lastId = "fos_${run}_0"
            var code = engine.speak(clipped, TextToSpeech.QUEUE_FLUSH, Bundle(), lastId)
            for (i in 1 until repeat) {
                if (code != TextToSpeech.SUCCESS) break
                if (pauseMs > 0) engine.playSilentUtterance(pauseMs, TextToSpeech.QUEUE_ADD, "fos_gap_${run}_$i")
                lastId = "fos_${run}_$i"
                code = engine.speak(clipped, TextToSpeech.QUEUE_ADD, Bundle(), lastId)
            }
            when {
                code != TextToSpeech.SUCCESS -> result.success("unavailable")
                await -> pending[lastId] = result
                else -> result.success("ok")
            }
        }
    }

    private fun finish(id: String?, status: String) {
        if (id == null) return
        main.post { pending.remove(id)?.success(status) }
    }

    private fun finishAll(status: String) {
        val all = pending.values.toList()
        pending.clear()
        all.forEach { it.success(status) }
    }

    private fun openSettings(): Boolean {
        for (action in listOf("com.android.settings.TTS_SETTINGS", TextToSpeech.Engine.ACTION_INSTALL_TTS_DATA)) {
            try {
                activity.startActivity(Intent(action).addFlags(Intent.FLAG_ACTIVITY_NEW_TASK))
                return true
            } catch (_: ActivityNotFoundException) {
            } catch (_: SecurityException) {
            }
        }
        return false
    }

    /** Lazily binds the engine once; later calls wait for the first init result. */
    private fun withEngine(block: (TextToSpeech?) -> Unit) {
        if (ready) { block(tts); return }
        if (failed) { block(null); return }
        waiting.add { block(if (ready) tts else null) }
        if (tts != null) return
        tts = TextToSpeech(activity.applicationContext) { status ->
            main.post {
                ready = status == TextToSpeech.SUCCESS
                failed = !ready
                if (failed) { tts?.shutdown(); tts = null }
                tts?.setOnUtteranceProgressListener(object : UtteranceProgressListener() {
                    override fun onStart(utteranceId: String?) {}
                    override fun onDone(utteranceId: String?) = finish(utteranceId, "ok")
                    override fun onStop(utteranceId: String?, interrupted: Boolean) = finish(utteranceId, "stopped")
                    override fun onError(utteranceId: String?, errorCode: Int) = finish(utteranceId, "unavailable")
                    @Deprecated("Deprecated in Java")
                    override fun onError(utteranceId: String?) = finish(utteranceId, "unavailable")
                })
                val queued = waiting.toList()
                waiting.clear()
                queued.forEach { it() }
            }
        }
    }

    /** Stops speech and frees the engine (activity destroyed). */
    fun dispose() {
        channel.setMethodCallHandler(null)
        finishAll("stopped")
        tts?.stop()
        tts?.shutdown()
        tts = null
        ready = false
        failed = false
        waiting.clear()
    }
}
