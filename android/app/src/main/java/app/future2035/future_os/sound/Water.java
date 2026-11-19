package app.future2035.future_os.sound;

import app.future2035.future_os.sound.Dsp.Brown;
import app.future2035.future_os.sound.Dsp.Drift;
import app.future2035.future_os.sound.Dsp.Grain;
import app.future2035.future_os.sound.Dsp.OnePole;
import app.future2035.future_os.sound.Dsp.Pink;
import app.future2035.future_os.sound.Dsp.Svf;

/** Rain (optionally with thunder), a river and ocean waves. */
final class Water {
    private Water() {}

    /**
     * Rain: a dense bed of filtered noise whose intensity slowly changes, plus
     * individual nearby drops (clicks) and occasional "plinks" into puddles.
     * With [storm], distant and near thunder rolls in every 20-70 seconds.
     */
    static final class Rain extends Voice {
        private final Pink pl, pr;
        private final OnePole hl = new OnePole(450), hr = new OnePole(450);
        private final OnePole tl = new OnePole(7000), tr = new OnePole(7000);
        private final Drift intensity;
        private final Grain[] drops = Dsp.pool(24);
        private final boolean storm;
        private final Brown rumble;
        private final Svf thunderFilter = new Svf(160, 0.7f);
        private final Drift thunderRoll;
        private final OnePole crackHp = new OnePole(1200);
        private float thunderEnv, thunderDecay, crackEnv;
        private int nextThunder;

        Rain(long seed, boolean storm) {
            super(seed);
            this.storm = storm;
            pl = new Pink(rng);
            pr = new Pink(new Dsp.Rng(rng.next()));
            intensity = new Drift(rng, storm ? 0.75f : 0.45f, storm ? 1.0f : 0.95f, 8f, 25f);
            rumble = new Brown(rng);
            thunderRoll = new Drift(rng, 0.25f, 1f, 0.08f, 0.45f);
            nextThunder = (int) (rng.range(6f, 18f) * Dsp.SR);
        }

        @Override
        void render(float[] l, float[] r, int n) {
            for (int i = 0; i < n; i++) {
                float k = intensity.tick();
                float bed = 0.55f + 0.45f * k;
                float a = tl.lp(hl.hp(pl.next())) * bed;
                float b = tr.lp(hr.hp(pr.next())) * bed;
                // Nearby drops: density follows the intensity.
                if (rng.chance(k * (storm ? 0.0011f : 0.0007f))) {
                    Grain g = Dsp.free(drops);
                    if (g != null) {
                        if (rng.chance(0.12f)) {
                            // Plink: a small bubble whose pitch rises.
                            g.start(rng.range(0.02f, 0.07f), rng.range(0.015f, 0.04f),
                                rng.range(900f, 3200f), rng.range(4000f, 12000f), rng.bi());
                        } else {
                            float near = rng.uni();
                            g.start(0.04f + 0.22f * near * near, rng.range(0.002f, 0.008f), 0f, 0f, rng.bi());
                        }
                    }
                }
                for (Grain g : drops) {
                    if (!g.on) continue;
                    float s = g.next(rng);
                    a += s * g.gl;
                    b += s * g.gr;
                }
                if (storm) {
                    float t = thunder();
                    a += t;
                    b += t;
                }
                l[i] += a * 1.08f;
                r[i] += b * 1.08f;
            }
        }

        private float thunder() {
            if (--nextThunder <= 0) {
                nextThunder = (int) (rng.range(20f, 70f) * Dsp.SR);
                float near = rng.uni();
                thunderEnv = 0.25f + 0.55f * near;
                thunderDecay = (float) Math.exp(-1.0 / (rng.range(1.5f, 3.2f) * Dsp.SR));
                thunderFilter.set(rng.range(90f, 220f), 0.8f);
                crackEnv = near > 0.7f ? 0.35f * near : 0f; // only close strikes crack
            }
            if (thunderEnv < 1e-4f && crackEnv < 1e-4f) return 0f;
            thunderFilter.tick(rumble.next());
            float out = thunderFilter.lp * thunderEnv * thunderRoll.tick() * 2.2f;
            thunderEnv *= thunderDecay;
            if (crackEnv > 1e-4f) {
                out += crackHp.hp(rng.bi()) * crackEnv;
                crackEnv *= 0.99985f;
            }
            return out;
        }
    }

    /**
     * River: three bands of noise, each bubbling at its own pace, plus small
     * gurgles (short rising tones) scattered across the stereo field.
     */
    static final class River extends Voice {
        private final Svf[] bandsL = {new Svf(260, 0.7f), new Svf(850, 1f), new Svf(2400, 1.1f)};
        private final Svf[] bandsR = {new Svf(280, 0.7f), new Svf(820, 1f), new Svf(2600, 1.1f)};
        private final Drift[] bubbleL, bubbleR;
        private final float[] weights = {0.9f, 0.55f, 0.28f};
        private final Grain[] gurgles = Dsp.pool(12);
        private final Drift flow;

        River(long seed) {
            super(seed);
            bubbleL = new Drift[3];
            bubbleR = new Drift[3];
            for (int i = 0; i < 3; i++) {
                bubbleL[i] = new Drift(rng, 0.35f, 1f, 0.04f, 0.25f);
                bubbleR[i] = new Drift(rng, 0.35f, 1f, 0.04f, 0.25f);
            }
            flow = new Drift(rng, 0.75f, 1f, 6f, 18f);
        }

        @Override
        void render(float[] l, float[] r, int n) {
            for (int i = 0; i < n; i++) {
                float f = flow.tick();
                float a = 0f, b = 0f;
                for (int k = 0; k < 3; k++) {
                    bandsL[k].tick(rng.bi());
                    bandsR[k].tick(rng.bi());
                    a += bandsL[k].bp * weights[k] * bubbleL[k].tick();
                    b += bandsR[k].bp * weights[k] * bubbleR[k].tick();
                }
                if (rng.chance(0.00016f * f)) {
                    Grain g = Dsp.free(gurgles);
                    if (g != null) {
                        g.start(rng.range(0.015f, 0.05f), rng.range(0.03f, 0.08f),
                            rng.range(280f, 700f), rng.range(2000f, 9000f), rng.bi() * 0.8f);
                    }
                }
                for (Grain g : gurgles) {
                    if (!g.on) continue;
                    float s = g.next(rng);
                    a += s * g.gl;
                    b += s * g.gr;
                }
                l[i] += a * f * 1.4f;
                r[i] += b * f * 1.4f;
            }
        }
    }

    /**
     * Ocean: waves of irregular length (7-13 s). Each swells with a low roar,
     * breaks with a bright crash and washes out as hiss; left and right waves
     * are independent so the shore sounds wide.
     */
    static final class Ocean extends Voice {
        private final Wave left, right;

        Ocean(long seed) {
            super(seed);
            left = new Wave(new Dsp.Rng(rng.next()));
            right = new Wave(new Dsp.Rng(rng.next()));
        }

        @Override
        void render(float[] l, float[] r, int n) {
            for (int i = 0; i < n; i++) {
                float a = left.next(), b = right.next();
                l[i] += (a * 0.8f + b * 0.2f) * 0.9f;
                r[i] += (b * 0.8f + a * 0.2f) * 0.9f;
            }
        }

        private static final class Wave {
            private final Dsp.Rng r;
            private final Brown roar;
            private final Pink body;
            private final Svf tone = new Svf(500, 0.6f);
            private final OnePole hiss = new OnePole(2500);
            private float phase, step, size;
            private int ctl;

            Wave(Dsp.Rng r) {
                this.r = r;
                roar = new Brown(r);
                body = new Pink(r);
                phase = r.uni();
                newWave();
            }

            private void newWave() {
                step = 1f / (r.range(7f, 13f) * Dsp.SR);
                size = r.range(0.55f, 1f);
            }

            float next() {
                phase += step;
                if (phase >= 1f) {
                    phase -= 1f;
                    newWave();
                }
                // Swell (0-0.4), crash (around 0.4), wash (0.4-1).
                float env;
                float wash;
                if (phase < 0.4f) {
                    float t = phase / 0.4f;
                    env = t * t * (3f - 2f * t);
                    wash = 0f;
                } else {
                    float t = (phase - 0.4f) / 0.6f;
                    env = (float) Math.exp(-3.2f * t);
                    wash = (float) Math.exp(-2.2f * t) * (1f - (float) Math.exp(-14f * t));
                }
                env *= size;
                if (--ctl <= 0) {
                    ctl = 32;
                    tone.set(250f + 2600f * env, 0.6f);
                }
                tone.tick(body.next());
                float low = roar.next() * (0.18f + 0.35f * env);
                float mid = tone.lp * env * 1.5f;
                float foam = hiss.hp(r.bi()) * wash * size * 0.22f;
                return low + mid + foam;
            }
        }
    }
}
