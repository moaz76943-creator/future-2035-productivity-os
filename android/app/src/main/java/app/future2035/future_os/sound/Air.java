package app.future2035.future_os.sound;

import app.future2035.future_os.sound.Dsp.Brown;
import app.future2035.future_os.sound.Dsp.Pink;

/** Plain noise colours (white, pink, brown) for concentration. */
final class Air {
    private Air() {}

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
