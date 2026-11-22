package app.future2035.future_os.sound

import android.content.Context
import android.media.AudioFormat
import android.media.MediaCodec
import android.media.MediaExtractor
import android.media.MediaFormat
import java.io.IOException
import java.lang.ref.SoftReference
import java.nio.ByteOrder

/**
 * Decodes the bundled recordings (`assets/sounds/<id>.ogg`, Vorbis) to mono
 * 16-bit PCM for [SampleVoice]. Runs on the voice's loader thread. Decoded
 * sounds are kept with soft references: reused when switched on again, freed
 * by the system when memory is needed.
 */
class AssetSamples(context: Context) : SampleVoice.Source {
    private val assets = context.applicationContext.assets
    private val cacheDir = context.applicationContext.cacheDir
    private val cache = HashMap<String, SoftReference<SampleVoice.Pcm>>()

    override fun load(id: String): SampleVoice.Pcm? {
        synchronized(cache) { cache[id]?.get()?.let { return it } }
        val pcm = try { decode("sounds/$id.ogg") } catch (e: Exception) { null } ?: return null
        synchronized(cache) { cache[id] = SoftReference(pcm) }
        return pcm
    }

    private fun decode(path: String): SampleVoice.Pcm? {
        val extractor = MediaExtractor()
        // Uncompressed assets (the default for .ogg) are read in place; otherwise
        // the file is copied to the cache once and read from there.
        val afd = try { assets.openFd(path) } catch (e: IOException) { null }
        var codec: MediaCodec? = null
        try {
            if (afd != null) {
                extractor.setDataSource(afd.fileDescriptor, afd.startOffset, afd.length)
            } else {
                val copy = java.io.File(cacheDir, "sound_" + path.substringAfterLast('/'))
                if (!copy.exists()) {
                    assets.open(path).use { input -> copy.outputStream().use { input.copyTo(it) } }
                }
                extractor.setDataSource(copy.path)
            }
            val track = (0 until extractor.trackCount).firstOrNull {
                extractor.getTrackFormat(it).getString(MediaFormat.KEY_MIME)?.startsWith("audio/") == true
            } ?: return null
            extractor.selectTrack(track)
            val format = extractor.getTrackFormat(track)
            var rate = format.getInteger(MediaFormat.KEY_SAMPLE_RATE)
            var channels = format.getInteger(MediaFormat.KEY_CHANNEL_COUNT).coerceAtLeast(1)
            var floatPcm = false
            val durationUs = if (format.containsKey(MediaFormat.KEY_DURATION)) format.getLong(MediaFormat.KEY_DURATION) else 60_000_000L
            var out = ShortArray(((durationUs / 1_000_000.0 + 1) * rate).toInt().coerceIn(48_000, 48_000 * 120))
            var size = 0

            val c = MediaCodec.createDecoderByType(format.getString(MediaFormat.KEY_MIME)!!)
            codec = c
            c.configure(format, null, null, 0)
            c.start()
            val info = MediaCodec.BufferInfo()
            var inputDone = false
            var idle = 0
            while (true) {
                if (!inputDone) {
                    val i = c.dequeueInputBuffer(10_000)
                    if (i >= 0) {
                        val buf = c.getInputBuffer(i)!!
                        val n = extractor.readSampleData(buf, 0)
                        if (n < 0) {
                            c.queueInputBuffer(i, 0, 0, 0, MediaCodec.BUFFER_FLAG_END_OF_STREAM)
                            inputDone = true
                        } else {
                            c.queueInputBuffer(i, 0, n, extractor.sampleTime, 0)
                            extractor.advance()
                        }
                    }
                }
                val o = c.dequeueOutputBuffer(info, 10_000)
                if (o == MediaCodec.INFO_OUTPUT_FORMAT_CHANGED) {
                    val f = c.outputFormat
                    rate = f.getInteger(MediaFormat.KEY_SAMPLE_RATE)
                    channels = f.getInteger(MediaFormat.KEY_CHANNEL_COUNT).coerceAtLeast(1)
                    floatPcm = f.containsKey(MediaFormat.KEY_PCM_ENCODING) &&
                        f.getInteger(MediaFormat.KEY_PCM_ENCODING) == AudioFormat.ENCODING_PCM_FLOAT
                    continue
                }
                if (o < 0) {
                    if (++idle > 1500) break // decoder stuck: keep what we have
                    continue
                }
                idle = 0
                val buf = c.getOutputBuffer(o)!!.order(ByteOrder.nativeOrder())
                buf.position(info.offset)
                buf.limit(info.offset + info.size)
                val frames = if (floatPcm) info.size / 4 / channels else info.size / 2 / channels
                if (size + frames > out.size) out = out.copyOf(maxOf(out.size * 2, size + frames))
                if (floatPcm) {
                    val fb = buf.asFloatBuffer()
                    for (f in 0 until frames) {
                        var sum = 0f
                        for (ch in 0 until channels) sum += fb.get()
                        out[size++] = (sum / channels * 32767f).coerceIn(-32768f, 32767f).toInt().toShort()
                    }
                } else {
                    val sb = buf.asShortBuffer()
                    for (f in 0 until frames) {
                        var sum = 0
                        for (ch in 0 until channels) sum += sb.get()
                        out[size++] = (sum / channels).toShort()
                    }
                }
                c.releaseOutputBuffer(o, false)
                if (info.flags and MediaCodec.BUFFER_FLAG_END_OF_STREAM != 0) break
            }
            return if (size < rate * 6) null else SampleVoice.Pcm(out.copyOf(size), rate)
        } finally {
            try { codec?.stop() } catch (_: Exception) {}
            codec?.release()
            extractor.release()
            afd?.close()
        }
    }
}
