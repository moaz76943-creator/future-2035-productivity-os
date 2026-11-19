#!/usr/bin/env python3
"""Renders the focus-timer end sounds into android/app/src/main/res/raw/.

    python3 tool/sounds/render_alarm_sounds.py

The beeps and the wood knock are synthesised here from scratch (original work).
The bird call and the stream are short excerpts of the app's CC0 recordings in
android/app/src/main/assets/sounds/ (see THIRD_PARTY_LICENSES.md), so every
sound is free for commercial use. None of them is music and none is a bell.
Output is OGG Vorbis, mono 44.1 kHz, peak -3 dBFS (needs numpy and ffmpeg).
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


def knock(seconds=0.18):
    tt = t(seconds)
    partials = [(190, 1.0, 0.05), (440, 0.6, 0.03), (790, 0.35, 0.018)]
    s = sum(a * np.sin(2 * np.pi * f * tt) * np.exp(-tt / d) for f, a, d in partials)
    click = rng.standard_normal(len(tt)) * np.exp(-tt / 0.002) * 0.3
    return s + click


def room(x, delay=0.045, feedback=0.25, tail=0.3):
    """A little space so short sounds do not feel dry."""
    x = np.concatenate([x, silence(tail)])
    d = int(delay * SR)
    y = x.copy()
    for i in range(d, len(y)):
        y[i] += feedback * y[i - d]
    return y


ASSETS = os.path.join(ROOT, 'android', 'app', 'src', 'main', 'assets', 'sounds')


def recording(name):
    raw = subprocess.run(['ffmpeg', '-loglevel', 'error', '-i', os.path.join(ASSETS, name + '.ogg'),
                          '-f', 's16le', '-ac', '1', '-ar', str(SR), '-'], check=True, capture_output=True).stdout
    return np.frombuffer(raw, dtype='<i2').astype(np.float64) / 32768


def excerpt(name, seconds, lo, hi):
    """The [seconds]-long part of a recording with the most energy between lo and hi Hz."""
    x = recording(name)
    spec = np.fft.rfft(x)
    freqs = np.fft.rfftfreq(len(x), 1 / SR)
    band = np.fft.irfft(spec * ((freqs >= lo) & (freqs <= hi)), len(x))
    win = int(seconds * SR)
    energy = np.convolve(band ** 2, np.ones(win), 'valid')
    start = int(np.argmax(energy))
    return fade(x[start:start + win], 0.08, 0.6)


SOUNDS = {
    'alarm_gentle': lambda: np.concatenate([beep(520, 0.26, 0.8), silence(0.16), beep(520, 0.26, 0.8)]),
    'alarm_beeps': lambda: np.concatenate(
        [beep(880, 0.11), silence(0.09), beep(880, 0.11), silence(0.09), beep(880, 0.11)]),
    'alarm_wood': lambda: room(np.concatenate([knock(), silence(0.06), knock()]), 0.03, 0.15),
    'alarm_bird': lambda: excerpt('forest', 2.6, 2000, 8000),
    'alarm_stream': lambda: excerpt('river', 2.4, 200, 4000),
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
