package app.future2035.future_os

import android.graphics.Canvas
import android.graphics.Color
import android.graphics.Paint
import android.graphics.Typeface
import android.graphics.pdf.PdfDocument
import android.text.Layout
import android.text.StaticLayout
import android.text.TextDirectionHeuristics
import android.text.TextPaint
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MethodChannel
import java.io.ByteArrayOutputStream

/**
 * Writes PDF documents (channel `future_os/pdf`) with Android's own text
 * layout: Arabic is shaped correctly, mixed Arabic/Latin lines follow the
 * bidi rules, and long text flows over A4 pages. Blocks come from Dart
 * (title, heading, paragraph, bullet, check, quote, table).
 */
class PdfExport(messenger: BinaryMessenger) {
    private val channel = MethodChannel(messenger, "future_os/pdf")

    init {
        channel.setMethodCallHandler { call, result ->
            if (call.method != "render") { result.notImplemented(); return@setMethodCallHandler }
            val args = call.arguments as? Map<*, *>
            val blocks = (args?.get("blocks") as? List<*>)?.mapNotNull { it as? Map<*, *> } ?: emptyList()
            val rtl = args?.get("rtl") == true
            Thread {
                val bytes = try { render(blocks, rtl) } catch (e: Exception) { null }
                android.os.Handler(android.os.Looper.getMainLooper()).post {
                    if (bytes == null) result.error("PDF", "render failed", null) else result.success(bytes)
                }
            }.start()
        }
    }

    fun dispose() = channel.setMethodCallHandler(null)

    private class Pages(val rtl: Boolean) {
        val doc = PdfDocument()
        var page: PdfDocument.Page? = null
        var y = 0f
        var number = 0
        val canvas: Canvas get() = page!!.canvas

        fun newPage() {
            page?.let { doc.finishPage(it) }
            number++
            page = doc.startPage(PdfDocument.PageInfo.Builder(W, H, number).create())
            y = M
        }

        /** Room for [h] points, or a new page. */
        fun ensure(h: Float) {
            if (page == null || (y + h > H - M && y > M)) newPage()
        }
    }

    private fun paint(size: Float, bold: Boolean = false, color: Int = Color.rgb(14, 19, 48)) = TextPaint(Paint.ANTI_ALIAS_FLAG).apply {
        textSize = size
        this.color = color
        typeface = if (bold) Typeface.DEFAULT_BOLD else Typeface.DEFAULT
    }

    private fun layout(text: String, p: TextPaint, width: Int, rtl: Boolean): StaticLayout =
        StaticLayout.Builder.obtain(text, 0, text.length, p, width.coerceAtLeast(10))
            .setAlignment(Layout.Alignment.ALIGN_NORMAL)
            .setTextDirection(if (rtl) TextDirectionHeuristics.FIRSTSTRONG_RTL else TextDirectionHeuristics.FIRSTSTRONG_LTR)
            .setLineSpacing(0f, 1.25f)
            .build()

    /** Draws a layout line by line so long text continues on the next page. */
    private fun draw(pages: Pages, l: StaticLayout, x: Float, after: Float) {
        var line = 0
        while (line < l.lineCount) {
            val lineH = (l.getLineBottom(line) - l.getLineTop(line)).toFloat()
            pages.ensure(lineH)
            val top = l.getLineTop(line).toFloat()
            var last = line
            while (last + 1 < l.lineCount && pages.y + (l.getLineBottom(last + 1) - top) <= H - M) last++
            val c = pages.canvas
            c.save()
            c.translate(x, pages.y - top)
            c.clipRect(0f, top, l.width.toFloat(), l.getLineBottom(last).toFloat())
            l.draw(c)
            c.restore()
            pages.y += l.getLineBottom(last) - top
            line = last + 1
            if (line < l.lineCount) pages.newPage()
        }
        pages.y += after
    }

    private fun render(blocks: List<Map<*, *>>, rtl: Boolean): ByteArray {
        val pages = Pages(rtl)
        val width = (W - 2 * M).toInt()
        for (b in blocks) {
            val text = (b["text"] as? String) ?: ""
            when (b["type"]) {
                "title" -> draw(pages, layout(text, paint(22f, true), width, rtl), M, 14f)
                "heading" -> {
                    val size = if ((b["level"] as? Number)?.toInt() == 1) 17f else 14.5f
                    pages.y += 6f
                    draw(pages, layout(text, paint(size, true), width, rtl), M, 6f)
                }
                "paragraph" -> draw(pages, layout(text, paint(11f), width, rtl), M, 8f)
                "bullet" -> draw(pages, layout("•  $text", paint(11f), width - 14, rtl), if (rtl) M else M + 14f, 3f)
                "check" -> {
                    val checked = b["checked"] == true
                    val p = paint(11f, color = if (checked) Color.GRAY else Color.rgb(14, 19, 48))
                    if (checked) p.isStrikeThruText = true
                    draw(pages, layout((if (checked) "☑  " else "☐  ") + text, p, width - 14, rtl), if (rtl) M else M + 14f, 3f)
                }
                "quote" -> draw(pages, layout(text, paint(11f, color = Color.rgb(69, 75, 102)), width - 24, rtl), if (rtl) M else M + 24f, 8f)
                "table" -> table(pages, (b["rows"] as? List<*>)?.map { r -> (r as? List<*>)?.map { it?.toString() ?: "" } ?: emptyList() } ?: emptyList(), width, rtl)
            }
        }
        if (pages.page == null) pages.newPage()
        pages.doc.finishPage(pages.page!!)
        val out = ByteArrayOutputStream()
        pages.doc.writeTo(out)
        pages.doc.close()
        return out.toByteArray()
    }

    private fun table(pages: Pages, rows: List<List<String>>, width: Int, rtl: Boolean) {
        val cols = rows.maxOfOrNull { it.size } ?: return
        if (cols == 0) return
        val pad = 4f
        val colW = width.toFloat() / cols
        val line = Paint().apply { color = Color.rgb(201, 206, 220); strokeWidth = 0.7f }
        for ((i, row) in rows.withIndex()) {
            val cells = (0 until cols).map { c ->
                layout(row.getOrElse(c) { "" }, paint(9.5f, bold = i == 0), (colW - 2 * pad).toInt(), rtl)
            }
            val h = (cells.maxOf { it.height } + 2 * pad).coerceAtMost(H - 2 * M)
            pages.ensure(h)
            val c = pages.canvas
            for ((k, cell) in cells.withIndex()) {
                // Right-to-left tables start their first column on the right.
                val x = if (rtl) M + width - (k + 1) * colW else M + k * colW
                c.save()
                c.translate(x + pad, pages.y + pad)
                c.clipRect(0f, 0f, colW - 2 * pad, h - 2 * pad)
                cell.draw(c)
                c.restore()
                c.drawLine(x, pages.y, x, pages.y + h, line)
            }
            c.drawLine(M + width, pages.y, M + width, pages.y + h, line)
            c.drawLine(M, pages.y, M + width, pages.y, line)
            c.drawLine(M, pages.y + h, M + width, pages.y + h, line)
            pages.y += h
        }
        pages.y += 10f
    }

    companion object {
        const val W = 595 // A4 in points
        const val H = 842
        const val M = 48f
    }
}
