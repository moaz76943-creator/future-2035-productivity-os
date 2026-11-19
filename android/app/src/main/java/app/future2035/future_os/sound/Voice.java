package app.future2035.future_os.sound;

/**
 * One endlessly generated sound. Implementations add their stereo output into
 * l/r (the mixer clears the buffers and applies the user's volume).
 * Each voice is calibrated to roughly the same loudness (about -20 dBFS RMS).
 */
abstract class Voice {
    final Dsp.Rng rng;

    Voice(long seed) {
        rng = new Dsp.Rng(seed ^ System.nanoTime());
    }

    /** Adds [n] frames of sound into [l] and [r]. */
    abstract void render(float[] l, float[] r, int n);

    /** The sound ids the app knows, in display order. */
    static final String[] IDS = {
        "rain", "storm", "river", "ocean", "fire", "wind", "forest", "night", "white", "pink", "brown"
    };

    static Voice create(String id, long seed) {
        switch (id) {
            case "rain": return new Water.Rain(seed, false);
            case "storm": return new Water.Rain(seed, true);
            case "river": return new Water.River(seed);
            case "ocean": return new Water.Ocean(seed);
            case "fire": return new Air.Fire(seed);
            case "wind": return new Air.Wind(seed);
            case "forest": return new Life.Forest(seed);
            case "night": return new Life.Night(seed);
            case "white": return new Air.Noise(seed, 0);
            case "pink": return new Air.Noise(seed, 1);
            case "brown": return new Air.Noise(seed, 2);
            default: return null;
        }
    }
}
