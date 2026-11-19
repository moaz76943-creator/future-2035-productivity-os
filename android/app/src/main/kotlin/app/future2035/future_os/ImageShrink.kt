package app.future2035.future_os

import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.Matrix
import android.media.ExifInterface
import android.os.Handler
import android.os.Looper
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodChannel
import java.io.ByteArrayInputStream
import java.io.ByteArrayOutputStream

/**
 * Pictures for notes (channel `future_os/image`): turned upright from the
 * camera's EXIF orientation, scaled to at most [maxSide] pixels and saved as
 * JPEG, so notes and backups stay small. Runs off the main thread.
 */
class ImageShrink(messenger: BinaryMessenger) {
    private val channel = MethodChannel(messenger, "future_os/image")

    init {
        channel.setMethodCallHandler { call, result ->
            if (call.method != "shrink") { result.notImplemented(); return@setMethodCallHandler }
            val bytes = call.argument<ByteArray>("bytes")
            val maxSide = (call.argument<Int>("maxSide") ?: 1600).coerceIn(200, 4000)
            val quality = (call.argument<Int>("quality") ?: 82).coerceIn(40, 95)
            if (bytes == null) { result.success(null); return@setMethodCallHandler }
            Thread {
                val out = try { shrink(bytes, maxSide, quality) } catch (e: Throwable) { null }
                Handler(Looper.getMainLooper()).post { result.success(out) }
            }.start()
        }
    }

    fun dispose() = channel.setMethodCallHandler(null)

    private fun shrink(bytes: ByteArray, maxSide: Int, quality: Int): ByteArray? {
        val bounds = BitmapFactory.Options().apply { inJustDecodeBounds = true }
        BitmapFactory.decodeByteArray(bytes, 0, bytes.size, bounds)
        if (bounds.outWidth <= 0 || bounds.outHeight <= 0) return null
        // Power-of-two pre-scaling keeps memory low for large photos.
        var sample = 1
        while (maxOf(bounds.outWidth, bounds.outHeight) / (sample * 2) >= maxSide) sample *= 2
        val decoded = BitmapFactory.decodeByteArray(bytes, 0, bytes.size, BitmapFactory.Options().apply { inSampleSize = sample })
            ?: return null
        val rotation = try {
            when (ExifInterface(ByteArrayInputStream(bytes)).getAttributeInt(ExifInterface.TAG_ORIENTATION, ExifInterface.ORIENTATION_NORMAL)) {
                ExifInterface.ORIENTATION_ROTATE_90 -> 90f
                ExifInterface.ORIENTATION_ROTATE_180 -> 180f
                ExifInterface.ORIENTATION_ROTATE_270 -> 270f
                else -> 0f
            }
        } catch (e: Exception) { 0f }
        val scale = minOf(1f, maxSide.toFloat() / maxOf(decoded.width, decoded.height))
        val matrix = Matrix().apply {
            if (scale < 1f) postScale(scale, scale)
            if (rotation != 0f) postRotate(rotation)
        }
        val bitmap = if (matrix.isIdentity) decoded else Bitmap.createBitmap(decoded, 0, 0, decoded.width, decoded.height, matrix, true)
        val out = ByteArrayOutputStream()
        bitmap.compress(Bitmap.CompressFormat.JPEG, quality, out)
        if (bitmap !== decoded) bitmap.recycle()
        decoded.recycle()
        return out.toByteArray()
    }
}
