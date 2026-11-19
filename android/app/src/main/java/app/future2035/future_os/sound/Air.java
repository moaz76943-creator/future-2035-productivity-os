package app.future2035.future_os.sound;

import app.future2035.future_os.sound.Dsp.Brown;
import app.future2035.future_os.sound.Dsp.Drift;
import app.future2035.future_os.sound.Dsp.Grain;
import app.future2035.future_os.sound.Dsp.OnePole;
import app.future2035.future_os.sound.Dsp.Pink;
import app.future2035.future_os.sound.Dsp.Svf;

/** Fire, wind and plain noise colours. */
final class Air {
    private Air() {}

    /**
     * Fire: a low breathing roar, a faint hiss of burning wood and crackles that
     * arrive in small clusters, with an occasional louder pop.
     */
    static final class Fire extends Voice {
        private final Brown roarL, roarR;
        private final Svf lowL = new Svf(180, 0.7f), lowR = new Svf(200, 0.7f);
        private final Pink hissSrc;
        private final OnePole hissHp = new OnePole(2500);
        private final Drift breath, hissLevel, crackleRate;
        private final Grain[] crackles = Dsp.pool(32);
        private int cluster;
        private float clusterPan;

        Fire(long seed) {
            super(seed);
            roarL = new Brown(rng);
            roarR = new Brown(new Dsp.Rng(rng.next()));
            hissSrc = new Pink(rng);
            breath = new Drift(rng, 0.45f, 1f, 0.3f, 1.4f);
            hissLevel = new Drift(rng, 0.02f, 0.06f, 1f, 4f);
            crackleRate = new Drift(rng, 3f, 14f, 2f, 7f);
        }

        @Override
        void render(float[] l, float[] r, int n) {
            for (int i = 0; i < n; i++) {
                float br = breath.tick();
                lowL.tick(roarL.next());
                lowR.tick(roarR.next());
                float hiss = hissHp.hp(hissSrc.next()) * hissLevel.tick();
                float a = lowL.lp * br * 0.9f + hiss;
                float b = lowR.lp * br * 0.9f + hiss;
                float rate = crackleRate.tick();
                if (cluster > 0 && rng.chance(1f / 600f)) {
                    // Next click of the current cluster, close to the previous one.
                    cluster--;
                    crackle(clusterPan + rng.bi() * 0.15f, 0.6f);
                } else if (rng.chance(rate / Dsp.SR)) {
                    cluster = (int) rng.range(0f, 5f);
                    clusterPan = rng.bi() * 0.7f;
                    if (rng.chance(0.04f)) {
                        pop(clusterPan);
                    } else {
                        crackle(clusterPan, 1f);
                    }
                }
                for (Grain g : crackles) {
                    if (!g.on) continue;
                    float s = g.next(rng);
                    a += s * g.gl;
                    b += s * g.gr;
                }
                l[i] += a * 0.95f;
                r[i] += b * 0.95f;
            }
        }

        private void crackle(float pan, float scale) {
            Grain g = Dsp.free(crackles);
            if (g == null) return;
            float v = rng.uni();
            g.start((0.05f + 0.35f * v * v) * scale, rng.range(0.0006f, 0.004f), 0f, 0f, pan);
        }

        private void pop(float pan) {
            Grain g = Dsp.free(crackles);
            if (g == null) return;
            // A woody knock: a low tone that falls quickly.
            g.start(rng.range(0.12f, 0.25f), rng.range(0.02f, 0.05f), rng.range(450f, 900f),
                -rng.range(3000f, 9000f), pan);
        }
    }

    /**
     * Wind: noise through a resonant band-pass whose pitch and sharpness wander,
     * with gusts; separate left/right filters make it surround the listener.
     */
    static final class Wind extends Voice {
        private final Gust left, right;
        private final Brown rumble;
        private final OnePole rumbleLp = new OnePole(120);

        Wind(long seed) {
            super(seed);
            left = new Gust(new Dsp.Rng(rng.next()));
            right = new Gust(new Dsp.Rng(rng.next()));
            rumble = new Brown(rng);
        }

        @Override
        void render(float[] l, float[] r, int n) {
            for (int i = 0; i < n; i++) {
                float low = rumbleLp.lp(rumble.next()) * 0.35f;
                l[i] += (left.next() + low) * 1.4f;
                r[i] += (right.next() + low) * 1.4f;
            }
        }

        private static final class Gust {
            private final Dsp.Rng r;
            private final Svf band = new Svf(500, 1f);
            private final Drift pitch, sharp, level;
            private int ctl;

            Gust(Dsp.Rng r) {
                this.r = r;
                pitch = new Drift(r, 220f, 950f, 2f, 6f);
                sharp = new Drift(r, 0.7f, 3.5f, 3f, 8f);
                level = new Drift(r, 0.15f, 1f, 2.5f, 8f);
            }

            float next() {
                float p = pitch.tick(), q = sharp.tick(), lv = level.tick();
                if (--ctl <= 0) {
                    ctl = 32;
                    band.set(p, q);
                }
                band.tick(r.bi());
                // Sharper (whistling) settings are quieter so they never pierce.
                return band.bp * lv * (0.55f / (0.5f + q * 0.35f));
            }
        }
    }

    /** White, pink or brown noise, decorrelated between the two ears. */
    static final class Noise extends Voice {
        private final int colour;
        private final Pink pinkL, pinkR;
        private final Brown brownL, brownR;

        Noise(long seed, int colour) {
            super(seed);
            this.colour = colour;
            Dsp.Rng other = new Dsp.Rng(rng.next());
            pinkL = new Pink(rng);
            pinkR = new Pink(other);
            brownL = new Brown(rng);
            brownR = new Brown(other);
        }

        @Override
        void render(float[] l, float[] r, int n) {
            for (int i = 0; i < n; i++) {
                switch (colour) {
                    case 0:
                        l[i] += rng.bi() * 0.17f;
                        r[i] += rng.bi() * 0.17f;
                        break;
                    case 1:
                        l[i] += pinkL.next() * 0.5f;
                        r[i] += pinkR.next() * 0.5f;
                        break;
                    default:
                        l[i] += brownL.next() * 0.42f;
                        r[i] += brownR.next() * 0.42f;
                        break;
                }
            }
        }
    }
}
