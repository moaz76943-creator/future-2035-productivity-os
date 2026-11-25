package app.future2035.future_os

import android.app.Activity
import android.content.Context
import android.hardware.Sensor
import android.hardware.SensorEvent
import android.hardware.SensorEventListener
import android.hardware.SensorManager
import android.view.WindowManager
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodChannel

/**
 * Immersive focus helpers.
 * - `future_os/focus_tools` (methods): keepAwake(on) keeps the screen on.
 * - `future_os/flip` (events): true when the phone lies face down, false when
 *   lifted, from the accelerometer (no permission, nothing stored or sent).
 */
class FocusTools(private val activity: Activity, messenger: BinaryMessenger) :
    SensorEventListener {
    private val methods = MethodChannel(messenger, "future_os/focus_tools")
    private val events = EventChannel(messenger, "future_os/flip")
    private val sensors = activity.getSystemService(Context.SENSOR_SERVICE) as SensorManager
    private var sink: EventChannel.EventSink? = null
    private var faceDown: Boolean? = null

    init {
        methods.setMethodCallHandler { call, result ->
            when (call.method) {
                "keepAwake" -> {
                    val on = call.argument<Boolean>("on") == true
                    activity.runOnUiThread {
                        if (on) {
                            activity.window.addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON)
                        } else {
                            activity.window.clearFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON)
                        }
                    }
                    result.success(true)
                }
                "hasFlipSensor" -> result.success(sensors.getDefaultSensor(Sensor.TYPE_ACCELEROMETER) != null)
                else -> result.notImplemented()
            }
        }
        events.setStreamHandler(object : EventChannel.StreamHandler {
            override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
                sink = events
                faceDown = null
                sensors.getDefaultSensor(Sensor.TYPE_ACCELEROMETER)?.let {
                    sensors.registerListener(this@FocusTools, it, SensorManager.SENSOR_DELAY_NORMAL)
                }
            }

            override fun onCancel(arguments: Any?) {
                sensors.unregisterListener(this@FocusTools)
                sink = null
            }
        })
    }

    override fun onSensorChanged(event: SensorEvent) {
        // z is about -9.8 when the screen faces the table; hysteresis avoids flicker.
        val z = event.values[2]
        val now = when {
            z < -8.5f -> true
            z > -4f -> false
            else -> return
        }
        if (now != faceDown) {
            faceDown = now
            sink?.success(now)
        }
    }

    override fun onAccuracyChanged(sensor: Sensor?, accuracy: Int) = Unit

    fun dispose() {
        sensors.unregisterListener(this)
        methods.setMethodCallHandler(null)
        events.setStreamHandler(null)
        sink = null
    }
}
