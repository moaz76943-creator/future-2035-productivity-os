package app.future2035.future_os.sound;

/**
 * Plays a real recording (decoded once to mono PCM) so that it never sounds
 * like a loop. Each ear has its own read head; every 9-20 seconds a head
 * jumps to a random place in the recording with a 2.5-second equal-power
 * cross-fade, and the level drifts slightly. Two heads in different places
 * also make a mono recording sound wide. A one-minute file therefore plays as
 * an endless, never-repeating sequence.
 */
public final class SampleVoice extends Voice {
    /** Supplies decoded recordings (Android decodes the app's assets). */
    public interface Source {
        /** Mono 16-bit PCM and its sample rate, or null when unavailable. Blocking. */
        Pcm load(String id);
    }

    public static final class Pcm {
        final short[] data;
        final int rate;
        final float gain;

        public Pcm(short[] data, int rate) {
            this.data = data;
            this.rate = rate;
            this.gain = loudnessGain(data);
        }

        /** Brings every recording to about the same loudness (-20 dBFS RMS). */
        private static float loudnessGain(short[] d) {
            double sum = 0;
            int peak = 1;
            for (short v : d) {
                sum += (double) v * v;
                peak = Math.max(peak, Math.abs(v));
            }
            double rms = Math.sqrt(sum / Math.max(1, d.length)) / 32768.0;
            if (rms < 1e-5) return 1f;
            // Loudness target; a rare loud drop or crackle may exceed full scale a little
            // (the mixer's soft clipper rounds it), but never by much.
            double g = Math.min(0.12 / rms, 1.5 * 32768.0 / peak);
            return (float) Math.max(0.3, Math.min(4.0, g));
        }
    }

    private static final float FADE_S = 2.5f;

    private volatile Pcm pcm;
    private final Head left, right;
    private final Dsp.Drift level;

    SampleVoice(String id, long seed, Source source) {
        super(seed);
        left = new Head(new Dsp.Rng(rng.next()));
        right = new Head(new Dsp.Rng(rng.next()));
        level = new Dsp.Drift(rng, 0.85f, 1f, 6f, 15f);
        Thread t = new Thread(() -> {
            Pcm p = null;
            try {
                p = source.load(id);
            } catch (RuntimeException ignored) {
                // Unavailable on this device: the voice stays silent.
            }
            pcm = p;
        }, "sound-load-" + id);
        t.setDaemon(true);
        t.start();
    }

    boolean ready() {
        return pcm != null;
    }

    @Override
    void render(float[] l, float[] r, int n) {
        Pcm p = pcm;
        if (p == null || p.data.length < p.rate * 6) return; // still loading (or too short)
        float g = p.gain / 32768f;
        for (int i = 0; i < n; i++) {
            float lv = level.tick() * g;
            float a = left.next(p), b = right.next(p);
            // Mostly separate ears with some shared sound: wide but natural.
            l[i] += (a * 0.78f + b * 0.22f) * lv;
            r[i] += (b * 0.78f + a * 0.22f) * lv;
        }
    }

    /** A read position that wanders through the recording with cross-fades. */
    private static final class Head {
        private final Dsp.Rng r;
        private double pos, other;
        private boolean started;
        private int untilJump, fadeLeft, fadeLen;

        Head(Dsp.Rng r) {
            this.r = r;
        }

        float next(Pcm p) {
            int len = p.data.length;
            double step = (double) p.rate / Dsp.SR;
            if (!started) {
                started = true;
                pos = r.uni() * (len - 1);
                untilJump = segment();
            }
            float out;
            if (fadeLeft > 0) {
                // Equal-power cross-fade from the old place to the new one.
                float t = 1f - (float) fadeLeft / fadeLen;
                float gOld = (float) Math.cos(t * Math.PI / 2), gNew = (float) Math.sin(t * Math.PI / 2);
                out = read(p, pos) * gOld + read(p, other) * gNew;
                pos = wrap(pos + step, len);
                other = wrap(other + step, len);
                if (--fadeLeft == 0) {
                    pos = other;
                    untilJump = segment();
                }
            } else {
                out = read(p, pos);
                pos = wrap(pos + step, len);
                if (--untilJump <= 0) {
                    // Jump somewhere at least a fifth of the file away.
                    double jump = (0.2 + 0.6 * r.uni()) * len;
                    other = wrap(pos + jump, len);
                    fadeLen = fadeLeft = (int) (FADE_S * Dsp.SR);
                }
            }
            return out;
        }

        private int segment() {
            return (int) (r.range(9f, 20f) * Dsp.SR);
        }

        private static double wrap(double x, int len) {
            while (x >= len - 1) x -= len - 1;
            return x;
        }

        /** Linear interpolation between neighbouring samples. */
        private static float read(Pcm p, double x) {
            int i = (int) x;
            float f = (float) (x - i);
            short[] d = p.data;
            int j = i + 1 < d.length ? i + 1 : 0;
            return d[i] + (d[j] - d[i]) * f;
        }
    }
}
