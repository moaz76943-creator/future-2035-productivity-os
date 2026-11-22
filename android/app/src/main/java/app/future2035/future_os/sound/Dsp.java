package app.future2035.future_os.sound;

/**
 * Small, allocation-free DSP building blocks: random numbers, noise colours,
 * filters and slow random drifts used by the noise voices and by the
 * recording player (original code).
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


}
