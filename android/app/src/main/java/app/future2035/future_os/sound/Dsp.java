package app.future2035.future_os.sound;

/**
 * Small, allocation-free DSP building blocks for the procedural nature sounds.
 * Everything here is original code: the app synthesises its sounds instead of
 * shipping recordings, so there are no third-party audio rights involved and
 * nothing ever repeats (all randomness is generated live).
 */
final class Dsp {
    private Dsp() {}

    /** Output sample rate shared by every voice. */
    static final int SR = 44100;
    static final float TWO_PI = (float) (Math.PI * 2);

    /** Coefficient for a one-pole smoother with time constant [seconds]. */
    static float smoothCoef(float seconds) {
        return (float) (1.0 - Math.exp(-1.0 / (Math.max(seconds, 1e-4) * SR)));
    }

    /** One-pole low-pass coefficient for a cutoff in Hz. */
    static float lpCoef(float hz) {
        return (float) (1.0 - Math.exp(-TWO_PI * hz / SR));
    }

    /** Fast sine for phases in [0, 1): good enough for synth tones. */
    static float sin01(float phase) {
        return (float) Math.sin(phase * TWO_PI);
    }

    /** Smooth 0..1..0 window over t in [0, 1]. */
    static float hann(float t) {
        if (t <= 0f || t >= 1f) return 0f;
        return 0.5f - 0.5f * (float) Math.cos(t * TWO_PI);
    }

    /** Gentle saturation that never exceeds +-1. */
    static float softClip(float x) {
        if (x > 3f) return 1f;
        if (x < -3f) return -1f;
        return x * (27f + x * x) / (27f + 9f * x * x);
    }

    /** xorshift64* random numbers. */
    static final class Rng {
        private long s;

        Rng(long seed) {
            s = seed == 0 ? 0x9E3779B97F4A7C15L : seed;
        }

        long next() {
            s ^= s >>> 12;
            s ^= s << 25;
            s ^= s >>> 27;
            return s * 0x2545F4914F6CDD1DL;
        }

        /** Uniform in [0, 1). */
        float uni() {
            return (next() >>> 40) * (1f / (1 << 24));
        }

        /** Uniform in [-1, 1). */
        float bi() {
            return uni() * 2f - 1f;
        }

        float range(float lo, float hi) {
            return lo + (hi - lo) * uni();
        }

        boolean chance(float p) {
            return uni() < p;
        }
    }

    /** Pink noise (Paul Kellet's refined filter), roughly unit RMS * 0.25. */
    static final class Pink {
        private final Rng r;
        private float b0, b1, b2, b3, b4, b5, b6;

        Pink(Rng r) {
            this.r = r;
        }

        float next() {
            float w = r.bi();
            b0 = 0.99886f * b0 + w * 0.0555179f;
            b1 = 0.99332f * b1 + w * 0.0750759f;
            b2 = 0.96900f * b2 + w * 0.1538520f;
            b3 = 0.86650f * b3 + w * 0.3104856f;
            b4 = 0.55000f * b4 + w * 0.5329522f;
            b5 = -0.7616f * b5 - w * 0.0168980f;
            float p = b0 + b1 + b2 + b3 + b4 + b5 + b6 + w * 0.5362f;
            b6 = w * 0.115926f;
            return p * 0.11f;
        }
    }

    /** Brown (red) noise: leaky integrated white noise. */
    static final class Brown {
        private final Rng r;
        private float b;

        Brown(Rng r) {
            this.r = r;
        }

        float next() {
            b = (b + 0.02f * r.bi()) / 1.02f;
            return b * 3.5f;
        }
    }

    /** One-pole low-pass; [hp] gives the matching high-pass. */
    static final class OnePole {
        private float a, y;

        OnePole(float hz) {
            set(hz);
        }

        void set(float hz) {
            a = lpCoef(hz);
        }

        float lp(float x) {
            y += a * (x - y);
            return y;
        }

        float hp(float x) {
            return x - lp(x);
        }
    }

    /**
     * Topology-preserving state-variable filter (stable under modulation).
     * After {@link #tick} the low, band and high outputs are in lp, bp, hp.
     */
    static final class Svf {
        private float ic1, ic2, k, a1, a2, a3;
        float lp, bp, hp;

        Svf(float hz, float q) {
            set(hz, q);
        }

        void set(float hz, float q) {
            float f = Math.max(10f, Math.min(hz, 0.45f * SR));
            float g = (float) Math.tan(Math.PI * f / SR);
            k = 1f / Math.max(q, 0.1f);
            a1 = 1f / (1f + g * (g + k));
            a2 = g * a1;
            a3 = g * a2;
        }

        void tick(float v0) {
            float v3 = v0 - ic2;
            float v1 = a1 * ic1 + a2 * v3;
            float v2 = ic2 + a2 * ic1 + a3 * v3;
            ic1 = 2f * v1 - ic1;
            ic2 = 2f * v2 - ic2;
            lp = v2;
            bp = v1;
            hp = v0 - k * v1 - v2;
        }
    }

    /**
     * A value that wanders smoothly between [lo] and [hi]: a new random target
     * every [minS]..[maxS] seconds, approached with a one-pole glide.
     */
    static final class Drift {
        private final Rng r;
        private final float lo, hi, minS, maxS, coef;
        private float v, target;
        private int left;

        Drift(Rng r, float lo, float hi, float minS, float maxS) {
            this.r = r;
            this.lo = lo;
            this.hi = hi;
            this.minS = minS;
            this.maxS = maxS;
            this.coef = smoothCoef((minS + maxS) / 4f);
            v = target = r.range(lo, hi);
        }

        float tick() {
            if (--left <= 0) {
                target = r.range(lo, hi);
                left = (int) (r.range(minS, maxS) * SR);
            }
            v += (target - v) * coef;
            return v;
        }

        float value() {
            return v;
        }
    }

    /** Equal-power pan gains for p in [-1, 1]. */
    static float panL(float p) {
        return (float) Math.cos((p + 1f) * Math.PI / 4);
    }

    static float panR(float p) {
        return (float) Math.sin((p + 1f) * Math.PI / 4);
    }

    /**
     * A short decaying grain (click, drip, crackle). Either filtered noise
     * (freq = 0) or a sine whose pitch glides by [sweep] per second.
     */
    static final class Grain {
        boolean on;
        float amp, decay, phase, freq, sweep, gl, gr, prev, life;

        void start(float amp, float seconds, float freq, float sweep, float pan) {
            on = true;
            this.amp = amp;
            this.decay = (float) Math.exp(-6.9 / (Math.max(seconds, 1e-4) * SR)); // -60 dB over [seconds]
            this.freq = freq;
            this.sweep = sweep / SR;
            this.phase = 0f;
            this.prev = 0f;
            this.life = seconds * 1.2f * SR;
            gl = panL(pan);
            gr = panR(pan);
        }

        /** Next mono sample (0 when finished). */
        float next(Rng r) {
            if (!on) return 0f;
            float s;
            if (freq <= 0f) {
                float n = r.bi();
                s = n - prev; // differentiated noise: bright click
                prev = n;
            } else {
                s = sin01(phase);
                phase += freq / SR;
                if (phase >= 1f) phase -= 1f;
                freq += sweep;
            }
            s *= amp;
            amp *= decay;
            if (--life <= 0f || amp < 1e-5f) on = false;
            return s;
        }
    }

    /** Starts a free grain from [pool]; returns null when all are busy. */
    static Grain free(Grain[] pool) {
        for (Grain g : pool) if (!g.on) return g;
        return null;
    }

    static Grain[] pool(int n) {
        Grain[] p = new Grain[n];
        for (int i = 0; i < n; i++) p[i] = new Grain();
        return p;
    }
}
