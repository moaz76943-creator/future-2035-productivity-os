package app.future2035.future_os.sound;

/**
 * One endlessly playing sound. Implementations add their stereo output into
 * l/r (the mixer clears the buffers and applies the user's volume).
 * Each voice plays at roughly the same loudness (about -20 dBFS RMS).
 */
abstract class Voice {
    final Dsp.Rng rng;

    Voice(long seed) {
        rng = new Dsp.Rng(seed ^ System.nanoTime());
    }

    /** Adds [n] frames of sound into [l] and [r]. */
    abstract void render(float[] l, float[] r, int n);

    /** Real recordings (CC0 / public domain, see THIRD_PARTY_LICENSES.md). */
    static final String[] RECORDINGS = {"rain", "storm", "river", "ocean", "fire", "forest", "night", "forestrain"};

    /** Every sound id the app knows: the recordings, then the noise colours. */
    static final String[] IDS = {
        "rain", "storm", "river", "ocean", "fire", "forest", "night", "forestrain", "white", "pink", "brown"
    };

    static Voice create(String id, long seed, SampleVoice.Source source) {
        switch (id) {
            case "white": return new Air.Noise(seed, 0);
            case "pink": return new Air.Noise(seed, 1);
            case "brown": return new Air.Noise(seed, 2);
            default:
                for (String r : RECORDINGS) {
                    if (r.equals(id)) return source == null ? null : new SampleVoice(id, seed, source);
                }
                return null;
        }
    }
}
