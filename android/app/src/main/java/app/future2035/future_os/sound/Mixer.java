package app.future2035.future_os.sound;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * Mixes the active voices with the user's volumes. Every change is a smooth
 * ramp (no clicks): voices fade in and out, the master fades on play/pause and
 * for the sleep timer. Pure Java so it can be tested off-device.
 * Thread-safe: the audio thread renders, the UI thread changes volumes.
 */
final class Mixer {
    static final int MAX_VOICES = 6;

    private static final class Entry {
        final Voice voice;
        float gain, target;

        Entry(Voice voice) {
            this.voice = voice;
        }
    }

    private final Map<String, Entry> entries = new LinkedHashMap<>();
    private final Map<String, Float> volumes = new LinkedHashMap<>();
    private float master, masterTarget, masterStep;
    private float[] l = new float[0], r = new float[0], tl = new float[0], tr = new float[0];
    private long seed = 1;
    private final SampleVoice.Source source;

    Mixer(SampleVoice.Source source) {
        this.source = source;
    }

    /**
     * Sets a sound's volume (0..1). 0 removes it after a short fade.
     * Returns false when the mix already holds MAX_VOICES sounds.
     */
    synchronized boolean setVolume(String id, float volume) {
        float v = Math.max(0f, Math.min(volume, 1f));
        Entry e = entries.get(id);
        if (v <= 0f) {
            volumes.remove(id);
            if (e != null) e.target = 0f;
            return true;
        }
        if (e == null) {
            if (volumes.size() >= MAX_VOICES) return false;
            Voice voice = Voice.create(id, seed++ * 7919L, source);
            if (voice == null) return false;
            e = new Entry(voice);
            entries.put(id, e);
        }
        volumes.put(id, v);
        e.target = v * v; // perceptual (quadratic) taper
        return true;
    }

    synchronized Map<String, Float> volumes() {
        return new LinkedHashMap<>(volumes);
    }

    synchronized void clear() {
        volumes.clear();
        entries.clear();
        master = masterTarget = 0f;
    }

    /** Fades the whole mix to [on] over [seconds]. */
    synchronized void fadeMaster(boolean on, float seconds) {
        masterTarget = on ? 1f : 0f;
        masterStep = 1f / Math.max(1f, seconds * Dsp.SR);
    }

    /** True when the master is fully down (safe to pause the output). */
    synchronized boolean silent() {
        return master <= 0f && masterTarget <= 0f;
    }

    synchronized boolean isEmpty() {
        return volumes.isEmpty();
    }

    /** Renders [frames] interleaved stereo 16-bit samples into [out]. */
    synchronized void render(short[] out, int frames) {
        if (l.length < frames) {
            l = new float[frames];
            r = new float[frames];
            tl = new float[frames];
            tr = new float[frames];
        }
        java.util.Arrays.fill(l, 0, frames, 0f);
        java.util.Arrays.fill(r, 0, frames, 0f);
        final float voiceStep = 1f / (0.6f * Dsp.SR);
        List<String> finished = null;
        for (Map.Entry<String, Entry> me : entries.entrySet()) {
            Entry e = me.getValue();
            java.util.Arrays.fill(tl, 0, frames, 0f);
            java.util.Arrays.fill(tr, 0, frames, 0f);
            e.voice.render(tl, tr, frames);
            for (int i = 0; i < frames; i++) {
                if (e.gain < e.target) e.gain = Math.min(e.target, e.gain + voiceStep);
                else if (e.gain > e.target) e.gain = Math.max(e.target, e.gain - voiceStep);
                l[i] += tl[i] * e.gain;
                r[i] += tr[i] * e.gain;
            }
            if (e.gain <= 0f && e.target <= 0f) {
                if (finished == null) finished = new ArrayList<>();
                finished.add(me.getKey());
            }
        }
        if (finished != null) for (String id : finished) entries.remove(id);
        for (int i = 0; i < frames; i++) {
            if (master < masterTarget) master = Math.min(masterTarget, master + masterStep);
            else if (master > masterTarget) master = Math.max(masterTarget, master - masterStep);
            // Several loud sounds together are tamed by the soft clipper.
            float a = Dsp.softClip(l[i] * master * 1.15f) * 0.95f;
            float b = Dsp.softClip(r[i] * master * 1.15f) * 0.95f;
            out[2 * i] = (short) (a * 32767f);
            out[2 * i + 1] = (short) (b * 32767f);
        }
    }
}
