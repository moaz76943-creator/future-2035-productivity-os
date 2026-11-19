package app.future2035.future_os.sound;

import app.future2035.future_os.sound.Dsp.Brown;
import app.future2035.future_os.sound.Dsp.Drift;
import app.future2035.future_os.sound.Dsp.OnePole;
import app.future2035.future_os.sound.Dsp.Pink;
import app.future2035.future_os.sound.Dsp.Svf;

/** Living soundscapes: a forest with birds, and a night with crickets and an owl. */
final class Life {
    private Life() {}

    /** Leaves rustling in a light breeze and birds calling from different places. */
    static final class Forest extends Voice {
        private final Pink leavesL, leavesR;
        private final Svf rustleL = new Svf(3800, 0.6f), rustleR = new Svf(4200, 0.6f);
        private final Drift breezeL, breezeR;
        private final Call[] birds = {new Call(), new Call(), new Call()};
        private int nextCall;

        Forest(long seed) {
            super(seed);
            leavesL = new Pink(rng);
            leavesR = new Pink(new Dsp.Rng(rng.next()));
            breezeL = new Drift(rng, 0.05f, 0.5f, 1.5f, 6f);
            breezeR = new Drift(rng, 0.05f, 0.5f, 1.5f, 6f);
            nextCall = (int) (rng.range(0.5f, 2f) * Dsp.SR);
        }

        @Override
        void render(float[] l, float[] r, int n) {
            for (int i = 0; i < n; i++) {
                rustleL.tick(leavesL.next());
                rustleR.tick(leavesR.next());
                float a = rustleL.bp * breezeL.tick() * 0.55f;
                float b = rustleR.bp * breezeR.tick() * 0.55f;
                if (--nextCall <= 0) {
                    nextCall = (int) (rng.range(1.2f, 6.5f) * Dsp.SR);
                    for (Call c : birds) {
                        if (!c.on) {
                            c.bird(rng);
                            break;
                        }
                    }
                }
                for (Call c : birds) {
                    if (!c.on) continue;
                    float s = c.next();
                    a += s * c.gl;
                    b += s * c.gr;
                }
                l[i] += a * 3f;
                r[i] += b * 3f;
            }
        }
    }

    /** Crickets that come and go, a soft breeze and a distant owl now and then. */
    static final class Night extends Voice {
        private final Cricket[] crickets;
        private final Brown air;
        private final OnePole airLp = new OnePole(260);
        private final Drift airLevel;
        private final Call owl = new Call();
        private int nextOwl;

        Night(long seed) {
            super(seed);
            int count = 3;
            crickets = new Cricket[count];
            for (int i = 0; i < count; i++) crickets[i] = new Cricket(new Dsp.Rng(rng.next()), i);
            air = new Brown(rng);
            airLevel = new Drift(rng, 0.15f, 0.45f, 4f, 12f);
            nextOwl = (int) (rng.range(20f, 50f) * Dsp.SR);
        }

        @Override
        void render(float[] l, float[] r, int n) {
            for (int i = 0; i < n; i++) {
                float bed = airLp.lp(air.next()) * airLevel.tick();
                float a = bed, b = bed;
                for (Cricket c : crickets) {
                    float s = c.next();
                    a += s * c.gl;
                    b += s * c.gr;
                }
                if (--nextOwl <= 0) {
                    nextOwl = (int) (rng.range(35f, 95f) * Dsp.SR);
                    if (!owl.on) owl.owl(rng);
                }
                if (owl.on) {
                    float s = owl.next();
                    a += s * owl.gl;
                    b += s * owl.gr;
                }
                l[i] += a * 1.4f;
                r[i] += b * 1.4f;
            }
        }
    }

    /** One cricket: groups of 3-4 short pulses at a steady, slightly varying rhythm. */
    private static final class Cricket {
        private final Dsp.Rng r;
        private final float freq, pulse, gap;
        private final int pulses;
        private final Drift presence;
        private float phase, period, t;
        final float gl, gr;
        private boolean skip;

        Cricket(Dsp.Rng r, int index) {
            this.r = r;
            freq = r.range(3900f, 5200f);
            pulse = r.range(0.012f, 0.018f) * Dsp.SR;
            gap = r.range(0.009f, 0.014f) * Dsp.SR;
            pulses = r.chance(0.5f) ? 3 : 4;
            period = r.range(0.38f, 0.8f) * Dsp.SR;
            t = r.uni() * period;
            presence = new Drift(r, 0f, 1f, 6f, 20f);
            float pan = (index - 1) * 0.6f + r.bi() * 0.2f;
            float level = r.range(0.025f, 0.06f);
            gl = Dsp.panL(pan) * level;
            gr = Dsp.panR(pan) * level;
        }

        float next() {
            float on = presence.tick();
            t += 1f;
            if (t >= period) {
                t -= period;
                skip = r.chance(0.06f);
                period *= r.range(0.97f, 1.03f);
                period = Math.max(0.3f * Dsp.SR, Math.min(period, 0.9f * Dsp.SR));
            }
            phase += freq / Dsp.SR;
            if (phase >= 1f) phase -= 1f;
            if (skip || on < 0.35f) return 0f;
            float slot = pulse + gap;
            int k = (int) (t / slot);
            if (k >= pulses) return 0f;
            float inPulse = (t - k * slot) / pulse;
            if (inPulse >= 1f) return 0f;
            return Dsp.sin01(phase) * Dsp.hann(inPulse) * (on - 0.35f) * 1.5f;
        }
    }

    /**
     * A sequence of glided tones: bird songs of a few kinds, or an owl.
     * Notes are made with a sine and a little second harmonic; far calls are
     * quieter and duller.
     */
    private static final class Call {
        boolean on;
        float gl, gr;
        private final float[] f0 = new float[14], f1 = new float[14], dur = new float[14], gap = new float[14];
        private int count, note;
        private float t, phase, amp, vib, harm;
        private final OnePole tone = new OnePole(6000);

        void bird(Dsp.Rng r) {
            float pick = r.uni();
            int kind = pick < 0.35f ? 0 : pick < 0.62f ? 1 : pick < 0.88f ? 2 : 3;
            float base;
            switch (kind) {
                case 0: // trill
                    count = (int) r.range(6f, 13f);
                    base = r.range(3200f, 4600f);
                    for (int i = 0; i < count; i++) {
                        float d = (i % 2 == 0 ? 1 : -1) * r.range(400f, 800f);
                        set(i, base, base + d, r.range(0.04f, 0.06f), r.range(0.018f, 0.03f));
                    }
                    vib = 0f;
                    harm = 0.12f;
                    break;
                case 1: // two-tone whistle
                    count = 2;
                    set(0, r.range(2100f, 2400f), r.range(3200f, 3600f), r.range(0.22f, 0.32f), 0.06f);
                    set(1, r.range(3000f, 3300f), r.range(1900f, 2200f), r.range(0.25f, 0.36f), 0.1f);
                    vib = 0.02f;
                    harm = 0.05f;
                    break;
                case 2: // quick chirps
                    count = (int) r.range(3f, 6f);
                    for (int i = 0; i < count; i++) {
                        set(i, r.range(1700f, 2100f), r.range(3800f, 4500f), r.range(0.025f, 0.04f), r.range(0.06f, 0.1f));
                    }
                    vib = 0f;
                    harm = 0.18f;
                    break;
                default: // soft dove-like coo, low and gentle
                    count = 3;
                    set(0, 540f, 500f, 0.32f, 0.1f);
                    set(1, 580f, 560f, 0.22f, 0.12f);
                    set(2, 520f, 440f, 0.45f, 0.2f);
                    vib = 0.01f;
                    harm = 0.3f;
                    break;
            }
            float far = r.uni();
            start(r, (0.05f + 0.13f * (1f - far)) * (kind == 3 ? 0.4f : 1f), 1500f + 6000f * (1f - far));
        }

        void owl(Dsp.Rng r) {
            count = 3;
            float b = r.range(330f, 400f);
            set(0, b, b - 15f, 0.42f, 0.35f);
            set(1, b + 10f, b - 5f, 0.2f, 0.12f);
            set(2, b + 5f, b - 30f, 0.55f, 0.1f);
            vib = 0.008f;
            harm = 0.15f;
            start(r, r.range(0.04f, 0.07f), 1200f);
        }

        private void set(int i, float from, float to, float seconds, float pause) {
            f0[i] = from;
            f1[i] = to;
            dur[i] = seconds * Dsp.SR;
            gap[i] = pause * Dsp.SR;
        }

        private void start(Dsp.Rng r, float level, float brightness) {
            on = true;
            note = 0;
            t = 0f;
            phase = 0f;
            amp = level;
            tone.set(brightness);
            float pan = r.bi() * 0.85f;
            gl = Dsp.panL(pan);
            gr = Dsp.panR(pan);
        }

        float next() {
            if (!on) return 0f;
            t += 1f;
            if (t >= dur[note] + gap[note]) {
                t = 0f;
                if (++note >= count) {
                    on = false;
                    return 0f;
                }
            }
            if (t >= dur[note]) return tone.lp(0f);
            float x = t / dur[note];
            float f = f0[note] + (f1[note] - f0[note]) * x;
            if (vib > 0f) f *= 1f + vib * Dsp.sin01(t * 6f / Dsp.SR);
            phase += f / Dsp.SR;
            if (phase >= 1f) phase -= 1f;
            float s = Dsp.sin01(phase) + harm * Dsp.sin01(phase * 2f % 1f);
            return tone.lp(s * Dsp.hann(x) * amp);
        }
    }
}
