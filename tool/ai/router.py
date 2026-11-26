"""Model router for helper drafts: tries providers, keys and models in order.

Used only by tool/ai/*_draft.py inside the df-ai-draft workflow. Everything it
returns is an untrusted draft that the caller validates. Keys are read from
DF_* environment variables and never printed: errors name the provider and
model only.
"""
import json
import os
import time
import urllib.error
import urllib.request

HERE = os.path.dirname(os.path.abspath(__file__))
RETRY = {408, 409, 425, 429, 500, 502, 503, 504}


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


class Router:
    """Rotates across providers/keys/models; remembers what is exhausted this run."""

    def __init__(self, allow_paid=False, only=None, log=print):
        cfg = json.load(open(os.path.join(HERE, 'models.json'), encoding='utf-8'))
        self.providers = [p for p in cfg['providers'] if not only or p['name'] in only]
        self.allow_paid = allow_paid
        self.dead = set()  # (provider, key name, model) that failed hard this run
        self.strikes = {}  # (provider, model) -> timeouts/server errors across keys
        self.log = log
        self.last_groq = 0.0

    def _routes(self):
        for p in self.providers:
            models = list(p['models']) + (p.get('paid_models', []) if self.allow_paid else [])
            keys = [k for k in p['keys'] if os.environ.get(k)]
            for m in models:
                for k in keys:
                    # A model that timed out or failed on the server twice is skipped
                    # for the rest of the run, whatever the key (saves long timeouts).
                    if (p['name'], k, m) not in self.dead and self.strikes.get((p['name'], m), 0) < 2:
                        yield p, m, k

    def ask(self, system, prompt, check=None):
        """Returns (text, 'provider/model'). [check] rejects malformed output and
        moves on to the next model, so one bad model cannot stop the run."""
        for p, model, key_name in self._routes():
            if p.get('tokens_per_minute'):
                # Stay under Groq's per-minute token budget: roughly 4 chars per token.
                need = (len(system) + len(prompt)) / 4 * 2 / p['tokens_per_minute'] * 60
                wait = self.last_groq + need - time.time()
                if wait > 0:
                    time.sleep(min(wait, 60))
                self.last_groq = time.time()
            label = f"{p['name']}/{model}"
            for attempt in range(2):
                try:
                    text = _call(p, model, os.environ[key_name], system, prompt)
                except urllib.error.HTTPError as e:
                    if e.code in RETRY and attempt == 0 and e.code != 429:
                        time.sleep(5)
                        continue
                    self.log(f'  {label}: HTTP {e.code}, next')
                    self.dead.add((p['name'], key_name, model))
                    if e.code in (404, 400) or e.code >= 500:
                        self.strikes[(p['name'], model)] = 9 if e.code in (404, 400) else (
                            self.strikes.get((p['name'], model), 0) + 1)
                    break
                except (urllib.error.URLError, TimeoutError, OSError, KeyError, IndexError, ValueError) as e:
                    self.log(f'  {label}: {type(e).__name__}, next')
                    self.strikes[(p['name'], model)] = self.strikes.get((p['name'], model), 0) + 1
                    self.dead.add((p['name'], key_name, model))
                    break
                problem = check(text) if check else None
                if problem:
                    self.log(f'  {label}: rejected output ({problem}), next')
                    break  # this model, this prompt: try another model
                return text, label
        raise NoModelAvailable('every configured model failed or is out of quota')
