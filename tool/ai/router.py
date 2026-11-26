"""Model router for helper drafts: always the smartest model that can answer now.

Every route (provider, model, key) is ranked across ALL providers by the model's
score in models.json (Claude's estimate of how capable it is), so when a model runs
out it moves to an equally smart model elsewhere, never to an older version first.
All keys of a model are tried before the next model.

Never stuck, never half-done:
  - each call has a hard wall-clock limit (a server that trickles bytes cannot hang a run)
  - 429/5xx/timeouts make a route rest (Retry-After honoured, daily quotas rest until the
    reset and are remembered across runs); 400/404 mark it gone; it comes back afterwards
  - a key that hits quota on several models rests as a whole (it is exhausted)
  - a malformed answer ([check]) moves the same prompt to the next model, so work is
    either a validated answer or nothing, never a broken half
  - when every route rests, [ask] waits for the first to come back (up to [patience])
  - new Gemini pro/flash versions are discovered at run time; retired ones are skipped
Keys come from DF_* environment variables and are never printed.
"""
import json
import os
import re
import threading
import time
import urllib.error
import urllib.request

HERE = os.path.dirname(os.path.abspath(__file__))
STATE = os.environ.get('AI_STATE', os.path.join(HERE, '..', '..', 'ai', 'state', 'health.json'))
RETRY = {408, 409, 425, 429, 500, 502, 503, 504}
WEAK = re.compile(r'(lite|nano|tts|image|embedding|live|audio|vision-only|aqa|learnlm|8b)', re.I)


class NoModelAvailable(Exception):
    pass


def _post(url, headers, body, timeout):
    req = urllib.request.Request(url, data=json.dumps(body).encode(), headers=headers, method='POST')
    with urllib.request.urlopen(req, timeout=timeout) as r:
        return json.loads(r.read().decode())


def _call(p, model, key, system, prompt):
    if p['kind'] == 'gemini':
        body = {
            'systemInstruction': {'parts': [{'text': system}]},
            'contents': [{'role': 'user', 'parts': [{'text': prompt}]}],
            'generationConfig': {'temperature': 0.2, 'responseMimeType': 'application/json'},
        }
        headers = {'Content-Type': 'application/json', 'x-goog-api-key': key}
        out = _post(p['url'].format(model=model), headers, body, p.get('timeout', 90))
        parts = out['candidates'][0]['content']['parts']
        return ''.join(x.get('text', '') for x in parts)
    body = {
        'model': model,
        'temperature': 0.2,
        'messages': [{'role': 'system', 'content': system}, {'role': 'user', 'content': prompt}],
    }
    headers = {'Content-Type': 'application/json', 'Authorization': 'Bearer ' + key}
    out = _post(p['url'], headers, body, p.get('timeout', 90))
    return out['choices'][0]['message']['content'] or ''


def _bounded(fn, limit):
    """Runs fn in a daemon thread; raises TimeoutError after [limit] seconds."""
    box = {}

    def run():
        try:
            box['v'] = fn()
        except BaseException as e:  # noqa: BLE001 - re-raised in the caller
            box['e'] = e
    t = threading.Thread(target=run, daemon=True)
    t.start()
    t.join(limit)
    if t.is_alive():
        raise TimeoutError('wall-clock limit')
    if 'e' in box:
        raise box['e']
    return box['v']


def _base(model):
    """Same underlying model on any provider: nvidia/x:free == x."""
    return model.split('/')[-1].split(':')[0].lower()


def gemini_score(model):
    """Score for a discovered Gemini model: newer and pro rank higher; None = not wanted."""
    m = re.fullmatch(r'gemini-(\d+(?:\.\d+)?)-(pro|flash)(?:-[a-z0-9.-]+)?', model)
    if not m or WEAK.search(model):
        return None
    return min(94, int(40 + float(m.group(1)) * 10 + (6 if m.group(2) == 'pro' else 0)))


class Router:
    def __init__(self, allow_paid=False, only=None, log=print, discover=True):
        cfg = json.load(open(os.path.join(HERE, 'models.json'), encoding='utf-8'))
        self.providers = [p for p in cfg['providers'] if not only or p['name'] in only]
        self.scores = cfg.get('scores', {})
        self.allow_paid = allow_paid
        self.log = log
        self.dead = set()      # (provider, key, model): gone for this run
        self.strikes = {}      # (provider, model) -> timeouts/server errors
        self.cool = {}         # (provider, key, model) -> time it may be tried again
        self.key_quota = {}    # (provider, key) -> models that hit quota on it
        self.overload = {}     # (provider, model) -> 5xx/timeouts this run
        self.last_groq = 0.0
        try:
            self.health = json.load(open(STATE, encoding='utf-8'))
        except (OSError, ValueError):
            self.health = {}
        # Long rests (daily quotas) survive between runs.
        now = time.time()
        for k, until in self.health.pop('_rest', {}).items():
            parts = k.split('|')
            if until > now and len(parts) == 3:
                self.cool[tuple(parts)] = until
        if discover:
            self._discover()

    # ---- memory -------------------------------------------------------------------
    def _note(self, label, ok):
        h = self.health.setdefault(label, {'ok': 0, 'fail': 0, 'last_fail': 0})
        h['ok' if ok else 'fail'] += 1
        if not ok:
            h['last_fail'] = time.time()

    def save(self):
        now = time.time()
        self.health['_rest'] = {'|'.join(k): t for k, t in self.cool.items() if t - now > 900}
        os.makedirs(os.path.dirname(STATE), exist_ok=True)
        with open(STATE, 'w', encoding='utf-8') as f:
            json.dump(self.health, f, indent=1)

    # ---- discovery ----------------------------------------------------------------
    def _discover(self):
        """Adds newer Gemini pro/flash models and drops retired ones (one cheap list call)."""
        for p in self.providers:
            if p['kind'] != 'gemini':
                continue
            key = next((os.environ[k] for k in p['keys'] if os.environ.get(k)), None)
            if not key:
                continue
            try:
                req = urllib.request.Request(
                    'https://generativelanguage.googleapis.com/v1beta/models?pageSize=200',
                    headers={'x-goog-api-key': key})
                with urllib.request.urlopen(req, timeout=20) as r:
                    data = json.loads(r.read().decode())
            except Exception:  # noqa: BLE001 - discovery is optional
                continue
            live = {m['name'].split('/')[-1] for m in data.get('models', [])
                    if 'generateContent' in m.get('supportedGenerationMethods', [])}
            if not live:
                continue
            keep = [m for m in p['models'] if m in live]
            for m in sorted(live):
                s = gemini_score(m)
                if s is not None and m not in keep and s >= 80 and 'preview' not in m and 'exp' not in m:
                    keep.append(m)
                    self.scores.setdefault(m, s)
                    self.log(f'  discovered {m} (score {s})')
            for m in set(p['models']) - set(keep):
                self.log(f'  {m} is no longer offered, skipped')
            p['models'] = keep or p['models']

    # ---- ranking ------------------------------------------------------------------
    def _score(self, p, m):
        s = self.scores.get(m) or self.scores.get(f"{p['name']}/{m}")
        return s if s is not None else (gemini_score(m) if p['kind'] == 'gemini' else None) or 50

    def _recent_bad(self, p, m):
        h = self.health.get(f"{p['name']}/{m}", {})
        return time.time() - h.get('last_fail', 0) < 6 * 3600 and h.get('fail', 0) > h.get('ok', 0)

    def _routes(self, avoid=None):
        avoid_p, _, avoid_m = (avoid or '').partition('/')
        rows = []
        for i, p in enumerate(self.providers):
            if p['name'] == avoid_p:
                continue
            models = list(p['models']) + (p.get('paid_models', []) if self.allow_paid else [])
            for j, m in enumerate(models):
                if avoid_m and _base(m) == _base(avoid_m):
                    continue  # the critic must be a different model, not the same one elsewhere
                # Smartest first; a recently failing model drops 15 points, not to the bottom.
                rank = self._score(p, m) - (15 if self._recent_bad(p, m) else 0)
                rows.append((-rank, i, j, p, m))
        now = time.time()
        for _, _, _, p, m in sorted(rows, key=lambda r: r[:3]):
            if self.strikes.get((p['name'], m), 0) >= 9:
                continue
            for k in p['keys']:
                if not os.environ.get(k) or (p['name'], k, m) in self.dead:
                    continue
                if (self.cool.get((p['name'], k, m), 0) <= now and self.cool.get((p['name'], k, '*'), 0) <= now
                        and self.cool.get((p['name'], '*', m), 0) <= now):
                    yield p, m, k

    # ---- asking -------------------------------------------------------------------
    def ask(self, system, prompt, check=None, avoid=None, patience=240):
        """Returns (text, 'provider/model'). [avoid] is a provider or 'provider/model'."""
        deadline = time.time() + patience
        while True:
            try:
                return self._ask_once(system, prompt, check, avoid)
            except NoModelAvailable:
                now = time.time()
                waits = [t for t in self.cool.values() if t > now]
                if not waits or min(waits) > deadline:
                    raise
                time.sleep(max(1, min(waits) - now))

    def _rest(self, p, key, model, code=None, retry_after=None, daily=False, bad_key=False):
        n = self.strikes.get((p['name'], model), 0)
        if code == 404:
            self.strikes[(p['name'], model)] = 9  # the model is gone, whatever the key
            return
        if code in (401, 403) or bad_key:
            self.cool[(p['name'], key, '*')] = time.time() + 86400  # this key is invalid or blocked
            return
        if code == 400:
            self.dead.add((p['name'], key, model))
            return
        now = time.time()
        if daily:
            # Free daily quotas reset around midnight Pacific (08:00 UTC): rest until then.
            until = (now // 86400) * 86400 + 8 * 3600
            self.cool[(p['name'], key, model)] = until + 86400 if until <= now else until
        else:
            self.cool[(p['name'], key, model)] = now + (retry_after or min(600, 60 * (n + 1)))
        if code is None or code >= 500:
            # Overloaded or hanging model: after two keys fail, rest the model on every key.
            self.overload[(p['name'], model)] = self.overload.get((p['name'], model), 0) + 1
            if self.overload[(p['name'], model)] >= 2:
                self.cool[(p['name'], '*', model)] = now + min(900, 180 * self.overload[(p['name'], model)])
        if code == 429:
            hit = self.key_quota.setdefault((p['name'], key), set())
            hit.add(model)
            if len(hit) >= 3:  # this key is exhausted, not just one model
                self.cool[(p['name'], key, '*')] = now + 900

    def _ask_once(self, system, prompt, check, avoid):
        for p, model, key in self._routes(avoid):
            if p.get('tokens_per_minute'):
                need = (len(system) + len(prompt)) / 4 * 2 / p['tokens_per_minute'] * 60
                wait = self.last_groq + need - time.time()
                if wait > 0:
                    time.sleep(min(wait, 60))
                self.last_groq = time.time()
            label = f"{p['name']}/{model}"
            limit = p.get('timeout', 90) + 30
            for attempt in range(2):
                try:
                    text = _bounded(lambda: _call(p, model, os.environ[key], system, prompt), limit)
                except urllib.error.HTTPError as e:
                    if e.code in RETRY and e.code != 429 and attempt == 0:
                        time.sleep(5)
                        continue
                    detail = ''
                    try:
                        detail = e.read().decode(errors='ignore')[:2000]
                    except Exception:  # noqa: BLE001
                        pass
                    ra = e.headers.get('Retry-After') if e.headers else None
                    daily = e.code == 429 and re.search(r'per ?day|PerDay|daily', detail, re.I) is not None
                    self.log(f'  {label}: HTTP {e.code}{" (daily quota)" if daily else ""}, next')
                    self._note(label, False)
                    if e.code >= 500:
                        self.strikes[(p['name'], model)] = self.strikes.get((p['name'], model), 0) + 1
                    bad_key = e.code == 400 and re.search(r'API key|api_key|invalid.*key', detail, re.I) is not None
                    self._rest(p, key, model, e.code, int(ra) if ra and ra.isdigit() else None, daily, bad_key)
                    break
                except (urllib.error.URLError, TimeoutError, OSError, KeyError, IndexError, ValueError, TypeError) as e:
                    self.log(f'  {label}: {type(e).__name__}, next')
                    self._note(label, False)
                    self.strikes[(p['name'], model)] = self.strikes.get((p['name'], model), 0) + 1
                    self._rest(p, key, model)
                    break
                problem = 'empty answer' if not text.strip() else (check(text) if check else None)
                self._note(label, not problem)
                if problem:
                    self.log(f'  {label}: rejected output ({problem}), next')
                    break
                return text, label
        raise NoModelAvailable('every configured model failed or is resting')
