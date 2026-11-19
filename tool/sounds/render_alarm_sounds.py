#!/usr/bin/env python3
"""Renders the focus-timer end sounds into android/app/src/main/res/raw/.

    python3 tool/sounds/render_alarm_sounds.py

Every sound is synthesised here from scratch (sine tones, filtered noise), so it
is original work owned by the app: no samples, no third-party rights, free for
commercial use. None of them is music and none is a bell: plain beeps, water
drops, a wood knock, a short bird call and a stream. Output is OGG Vorbis,
mono 44.1 kHz, peak -3 dBFS (needs numpy and ffmpeg).
"""
import os
import subprocess
import tempfile
import wave

import numpy as np

SR = 44100
ROOT = os.path.dirname(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
OUT = os.path.join(ROOT, 'android', 'app', 'src', 'main', 'res', 'raw')
rng = np.random.default_rng(2035)


def t(seconds):
    return np.arange(int(seconds * SR)) / SR


def fade(x, a=0.01, r=0.04):
    n = len(x)
    env = np.ones(n)
    na, nr = int(a * SR), int(r * SR)
    env[:na] = np.linspace(0, 1, na) ** 2
    env[n - nr:] = np.linspace(1, 0, nr) ** 2
    return x * env


def silence(seconds):
    return np.zeros(int(seconds * SR))


def beep(freq, seconds, level=1.0):
    tt = t(seconds)
    tone = np.sin(2 * np.pi * freq * tt) + 0.12 * np.sin(4 * np.pi * freq * tt)
    return fade(tone * level, 0.012, 0.05)


def drop(f0, f1, seconds):
    tt = t(seconds)
    f = f0 * (f1 / f0) ** np.clip(tt / 0.025, 0, 1)  # quick upward glide (bubble)
    phase = 2 * np.pi * np.cumsum(f) / SR
    return np.sin(phase) * np.exp(-tt / 0.05)


def knock(seconds=0.18):
    tt = t(seconds)
    partials = [(190, 1.0, 0.05), (440, 0.6, 0.03), (790, 0.35, 0.018)]
    s = sum(a * np.sin(2 * np.pi * f * tt) * np.exp(-tt / d) for f, a, d in partials)
    click = rng.standard_normal(len(tt)) * np.exp(-tt / 0.002) * 0.3
    return s + click


def chirp(f0, f1, seconds):
    tt = t(seconds)
    f = np.linspace(f0, f1, len(tt))
    phase = 2 * np.pi * np.cumsum(f) / SR
    env = np.sin(np.pi * np.linspace(0, 1, len(tt))) ** 1.5
    return (np.sin(phase) + 0.1 * np.sin(2 * phase)) * env


def stream(seconds):
    n = int(seconds * SR)
    out = np.zeros(n)
    for centre, width, w in [(300, 200, 0.9), (900, 500, 0.5), (2400, 1200, 0.25)]:
        spec = np.fft.rfft(rng.standard_normal(n))
        freqs = np.fft.rfftfreq(n, 1 / SR)
        spec *= np.exp(-((freqs - centre) / width) ** 2)
        band = np.fft.irfft(spec, n)
        wobble = np.interp(np.arange(n), np.linspace(0, n, 40), rng.uniform(0.4, 1, 40))
        out += band / (np.abs(band).max() + 1e-9) * w * wobble
    return fade(out, 0.3, 0.6)


def room(x, delay=0.045, feedback=0.25, tail=0.3):
    """A little space so short sounds do not feel dry."""
    x = np.concatenate([x, silence(tail)])
    d = int(delay * SR)
    y = x.copy()
    for i in range(d, len(y)):
        y[i] += feedback * y[i - d]
    return y


SOUNDS = {
    'alarm_gentle': lambda: np.concatenate([beep(520, 0.26, 0.8), silence(0.16), beep(520, 0.26, 0.8)]),
    'alarm_beeps': lambda: np.concatenate(
        [beep(880, 0.11), silence(0.09), beep(880, 0.11), silence(0.09), beep(880, 0.11)]),
    'alarm_drops': lambda: room(np.concatenate(
        [drop(650, 1500, 0.25), silence(0.12), drop(800, 1800, 0.25), silence(0.08), drop(600, 1300, 0.3)])),
    'alarm_wood': lambda: room(np.concatenate([knock(), silence(0.06), knock()]), 0.03, 0.15),
    'alarm_bird': lambda: room(np.concatenate(
        [chirp(2200, 3600, 0.08), silence(0.05), chirp(2300, 3800, 0.08), silence(0.05),
         chirp(3400, 2100, 0.16)]), 0.06, 0.2),
    'alarm_stream': lambda: stream(2.2),
}


def write(name, x):
    x = x / (np.abs(x).max() + 1e-9) * 10 ** (-3 / 20)
    pcm = (x * 32767).astype('<i2').tobytes()
    with tempfile.TemporaryDirectory() as d:
        wav = os.path.join(d, 'a.wav')
        with wave.open(wav, 'wb') as w:
            w.setnchannels(1)
            w.setsampwidth(2)
            w.setframerate(SR)
            w.writeframes(pcm)
        out = os.path.join(OUT, name + '.ogg')
        subprocess.run(['ffmpeg', '-y', '-loglevel', 'error', '-i', wav, '-c:a', 'libvorbis', '-q:a', '4',
                        '-map_metadata', '-1', out], check=True)
    return out


if __name__ == '__main__':
    os.makedirs(OUT, exist_ok=True)
    for name, make in SOUNDS.items():
        path = write(name, make())
        print(f'{os.path.relpath(path, ROOT)}  {os.path.getsize(path) // 1024} KB')
