package app.future2035.future_os.sound

import android.content.Context
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodChannel

/**
 * Bridge between the app and [SoundEngine]:
 * method channel `future_os/soundscape` for commands and event channel
 * `future_os/soundscape/state` for state changes (also those made from the
 * notification). [detach] drops every reference to the Flutter engine so a
 * closed app leaves nothing behind while the sounds keep playing.
 */
class SoundscapeChannel(private val context: Context, messenger: BinaryMessenger) {
    /** Opens the system file picker for audio (set by the activity); null when unavailable. */
    var pickAudio: ((MethodChannel.Result) -> Unit)? = null

    private val methods = MethodChannel(messenger, "future_os/soundscape")
    private val events = EventChannel(messenger, "future_os/soundscape/state")
    private var sink: EventChannel.EventSink? = null
    private val listener: () -> Unit = { sink?.success(state()) }

    init {
        SoundEngine.init(context)
        methods.setMethodCallHandler { call, result ->
            when (call.method) {
                "setVolume" -> {
                    val id = call.argument<String>("id").orEmpty()
                    val volume = (call.argument<Double>("volume") ?: 0.0).toFloat()
                    result.success(SoundEngine.setVolume(id, volume))
                }
                "play" -> {
                    labels(call.argument<Map<String, String>>("labels"))
                    SoundEngine.play()
                    if (SoundEngine.playing) SoundscapeService.show(context)
                    result.success(SoundEngine.playing)
                }
                "pause" -> {
                    SoundEngine.pause()
                    result.success(null)
                }
                "stop" -> {
                    SoundEngine.stop()
                    result.success(null)
                }
                "sleep" -> {
                    SoundEngine.sleep(call.argument<Int>("minutes") ?: 0)
                    result.success(null)
                }
                "labels" -> {
                    labels(call.argument<Map<String, String>>("labels"))
                    result.success(null)
                }
                "pickMusic" -> pickAudio?.invoke(result) ?: result.success(false)
                "clearMusic" -> {
                    MusicTrack.clear()
                    if (SoundEngine.isEmpty() && SoundEngine.playing) SoundEngine.stop()
                    result.success(null)
                }
                "setMusicVolume" -> {
                    MusicTrack.setVolume((call.argument<Double>("volume") ?: 0.8).toFloat())
                    result.success(null)
                }
                "state" -> result.success(state())
                else -> result.notImplemented()
            }
        }
        events.setStreamHandler(object : EventChannel.StreamHandler {
            override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
                sink = events
                SoundEngine.addListener(listener)
                events?.success(state())
            }

            override fun onCancel(arguments: Any?) {
                SoundEngine.removeListener(listener)
                sink = null
            }
        })
    }

    private fun labels(map: Map<String, String>?) {
        if (map != null) SoundscapeService.labels = map
    }

    private fun state(): Map<String, Any?> = mapOf(
        "playing" to SoundEngine.playing,
        "volumes" to SoundEngine.volumes().mapValues { it.value.toDouble() },
        "sleepRemainingMs" to SoundEngine.sleepRemaining(),
        "music" to (MusicTrack.uri?.let { mapOf("name" to MusicTrack.name, "volume" to MusicTrack.volume.toDouble()) }),
    )

    fun detach() {
        SoundEngine.removeListener(listener)
        sink = null
        methods.setMethodCallHandler(null)
        events.setStreamHandler(null)
    }
}
