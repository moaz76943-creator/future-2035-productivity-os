#!/usr/bin/env python3
"""Builds the downloadable word packs, a little every hour, with two models agreeing.

    python3 tool/ai/packs/packs_agent.py --root <content checkout> --shard 0 --shards 4

Tree: catalog.json (Claude) -> concepts (English words per branch, shard 0 adds them)
-> packs/<lang>.json (one file per language, shard k handles languages i % shards == k,
so parallel jobs never write the same file). Every word passes rules.py, a worker
model and a critic from another provider; anything in doubt is left out. Work is only
added, never wiped: an existing word is removed only when two different critics both
call it wrong, and it is then redone on a later run. Progress is saved after every
branch, so a stop, a timeout or an empty quota loses nothing.
"""
import datetime
import json
import os
import random
import re
import sys
import time

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
sys.path.insert(0, os.path.dirname(HERE))
import rules  # noqa: E402
from router import NoModelAvailable, Router  # noqa: E402

TARGET = 20  # words per branch
RULES = ('Family-friendly app for children and adults that follows Islamic guidelines: no alcohol, pork, '
         'gambling, music or instruments, romance or dating, rude or vulgar words, words with a bad second '
         'meaning, violence or weapons, religious symbols of any faith, magic, horoscopes or revealing '
         'clothes. If in any doubt, leave it out.')


def load(path, default):
    try:
        return json.load(open(path, encoding='utf-8'))
    except (OSError, ValueError):
        return default


def save(path, data):
    os.makedirs(os.path.dirname(path), exist_ok=True)
    tmp = path + '.tmp'
    with open(tmp, 'w', encoding='utf-8') as f:
        json.dump(data, f, ensure_ascii=False, indent=1, sort_keys=True)
        f.write('\n')
    os.replace(tmp, path)  # atomic: a killed run never leaves a broken file


def as_json(text):
    try:
        out = json.loads(re.sub(r'^```(?:json)?|```$', '', text.strip(), flags=re.M))
    except ValueError:
        return None
    return out if isinstance(out, dict) else None


class Agent:
    def __init__(self, root, src, shard, shards, minutes):
        self.root, self.src, self.shard, self.shards = root, src, shard, shards
        self.stop_at = time.time() + minutes * 60
        self.catalog = {k: v for k, v in load(os.path.join(HERE, 'catalog.json'), {}).items() if k[0] != '_'}
        self.concepts_path = os.path.join(root, 'packs', 'concepts.json')
        self.concepts = load(self.concepts_path, {})
        self.router = Router(log=self.log)
        self.lines = []

    def log(self, msg):
        print(msg)
        self.lines.append(msg)

    def time_left(self):
        return time.time() < self.stop_at

    def ask(self, system, prompt, avoid=None):
        text, label = self.router.ask(system, prompt, lambda t: None if as_json(t) is not None else 'not JSON',
                                      avoid=avoid)
        return as_json(text), label

    # ---- 1. English concepts (shard 0) ----------------------------------------------
    def fill_concepts(self, max_branches=3):
        done = 0
        for cat, c in self.catalog.items():
            for sub, title in c['subs'].items():
                key = f'{cat}.{sub}'
                have = self.concepts.setdefault(key, {})
                if len(have) >= TARGET or done >= max_branches or not self.time_left():
                    continue
                done += 1
                prompt = (f'Topic: {c["en"]} > {title}\nAlready listed (do not repeat): '
                          f'{", ".join(v["en"] for v in have.values()) or "none"}\n'
                          f'Give {TARGET - len(have)} more common words for this topic.')
                system = ('You build vocabulary lists for a language-learning app. ' + RULES +
                          ' Each item: plain English word (no article), a short note that fixes the sense, '
                          'and one emoji only for objects, food, plants, weather or places ("" for anything '
                          'showing a person, body part or animal). Answer JSON '
                          '{"items":[{"id":"snake_case","en":"...","note":"...","emoji":""}]}')
                out, label = self.ask(system, prompt)
                new = {}
                for it in (out or {}).get('items', [])[:TARGET]:
                    cid = str(it.get('id', '')).strip()
                    item = {'en': str(it.get('en', '')).strip(), 'note': str(it.get('note', '')).strip()[:60],
                            'emoji': str(it.get('emoji', '')).strip()}
                    if cid in have or any(v['en'].lower() == item['en'].lower() for v in have.values()):
                        continue
                    if not rules.concept_problem(cid, item):
                        new[cid] = item
                bad = self.critic(f'English vocabulary for "{c["en"]} > {title}". {RULES} Flag ids that '
                                  'break a rule, are not common words for this topic, or whose emoji does not '
                                  'match or shows a person, body part or animal.', new, label)
                if bad is None:
                    self.log(f'- concepts {key}: no independent critic, kept for later')
                    continue
                for cid in new:
                    if cid not in bad:
                        have[cid] = new[cid]
                save(self.concepts_path, self.concepts)
                self.log(f'- concepts {key}: +{len(new) - len(bad & set(new))} (critic dropped {len(bad & set(new))})')

    def critic(self, task, items, drafted_by):
        """Returns the set of flagged ids, or None when no other provider answered."""
        if not items:
            return set()
        system = ('You are a strict reviewer and assume the draft has mistakes. ' + task +
                  ' Answer JSON {"bad": ["id", ...]} (empty list if all are good).')
        try:
            out, self.last_critic = self.ask(system, json.dumps(items, ensure_ascii=False), avoid=drafted_by)
        except NoModelAvailable:
            return None
        bad = out.get('bad') if out else None
        return {str(b) for b in bad} if isinstance(bad, list) else None

    # ---- 2. translations ------------------------------------------------------------
    def languages(self):
        langs = [x for x in load(os.path.join(self.src, 'lib', 'l10n', 'languages.json'), [])
                 if not x.get('base') and x['code'] != 'en']
        return [x for i, x in enumerate(langs) if i % self.shards == self.shard]

    def translate(self, lang, max_branches=4):
        code, name, script = lang['code'], lang['english'], lang.get('script', 'Latn')
        path = os.path.join(self.root, 'packs', f'{code}.json')
        pack = load(path, {'lang': code, 'names': {}, 'items': {}})
        system = (f'You are a native {name} lexicographer. For each id give the word a native speaker '
                  f'naturally uses in everyday life for that English word in the sense of its note: not a '
                  f'literal or word-for-word translation, no explanation. Standard spelling in {script} '
                  f'script. Nouns singular; include the article or gender marker where learners need it '
                  f'(for example German der/die/das, French le/la). Verbs in dictionary form. ' + RULES +
                  ' If the usual word is rude, inappropriate or has a bad second meaning, give "". '
                  'Answer JSON {"id": "word", ...}.')
        review = (f'You are a native {name} reviewer. Flag ids whose {name} word is wrong, unnatural, a '
                  f'literal calque, a different sense than the note, misspelled, not in {script} script, '
                  f'or rude or inappropriate in any common meaning. {RULES}')
        names = {}
        for cat, c in self.catalog.items():
            names[cat] = {'en': c['en'], 'note': 'title of a vocabulary topic'}
            for sub, title in c['subs'].items():
                names[f'{cat}.{sub}'] = {'en': title, 'note': f'title of a vocabulary list under {c["en"]}'}
        jobs = [('names', {k: v for k, v in names.items() if k not in pack['names']})]
        for key, words in self.concepts.items():
            todo = {f'{key}.{cid}': {'en': w['en'], 'note': w.get('note', '')}
                    for cid, w in words.items() if f'{key}.{cid}' not in pack['items']}
            if todo:
                jobs.append((key, todo))
        done = 0
        for key, todo in jobs:
            if not todo or done >= max_branches or not self.time_left():
                continue
            done += 1
            out, label = self.ask(system, json.dumps(todo, ensure_ascii=False))
            draft = {}
            for k, v in (out or {}).items():
                if k in todo and isinstance(v, str) and v.strip():
                    if not rules.term_problem(v, script, todo[k]['en']):
                        draft[k] = v.strip()
            bad = self.critic(review, {k: {'en': todo[k]['en'], 'note': todo[k]['note'], 'word': v}
                                       for k, v in draft.items()}, label)
            if bad is None:
                self.log(f'- {code} {key}: no independent critic, retried later')
                continue
            target = pack['names'] if key == 'names' else pack['items']
            kept = {k: v for k, v in draft.items() if k not in bad}
            target.update(kept)
            save(path, pack)
            self.log(f'- {code} {key}: +{len(kept)} of {len(todo)} (critic dropped {len(draft) - len(kept)})')
        self.recheck(code, review, pack, path)

    def recheck(self, code, review, pack, path, sample=20):
        """Continuous improvement: two different critics must both flag a word to remove it."""
        if not self.time_left() or len(pack['items']) < sample:
            return
        keys = random.sample(sorted(pack['items']), sample)
        items = {}
        for k in keys:
            cat_sub, _, cid = k.rpartition('.')
            w = self.concepts.get(cat_sub, {}).get(cid)
            if w:
                items[k] = {'en': w['en'], 'note': w.get('note', ''), 'word': pack['items'][k]}
        first = self.critic(review, items, None)
        if not first:
            return
        second = self.critic(review, {k: items[k] for k in first if k in items}, self.last_critic)
        both = (first & second) if second else set()
        for k in both:
            pack['items'].pop(k, None)
        if both:
            save(path, pack)
            self.log(f'- {code} recheck: removed {len(both)} words both critics rejected (redone later)')

    def english(self):
        names = {}
        for cat, c in self.catalog.items():
            names[cat] = c['en']
            for sub, title in c['subs'].items():
                names[f'{cat}.{sub}'] = title
        items = {f'{k}.{cid}': w['en'] for k, ws in self.concepts.items() for cid, w in ws.items()}
        emoji = {f'{cat}': c.get('emoji', '') for cat, c in self.catalog.items()}
        emoji.update({f'{k}.{cid}': w['emoji'] for k, ws in self.concepts.items() for cid, w in ws.items() if w.get('emoji')})
        save(os.path.join(self.root, 'packs', 'en.json'), {'lang': 'en', 'names': names, 'items': items, 'emoji': emoji})

    def run(self):
        try:
            if self.shard == 0:
                self.fill_concepts()
                self.english()
            langs = self.languages()
            random.shuffle(langs)  # a language that keeps failing never starves the others
            for lang in langs:
                if not self.time_left():
                    break
                self.translate(lang)
        except NoModelAvailable:
            self.log('- every model is resting; progress so far is saved')
        finally:
            self.router.save()
            day = datetime.date.today().isoformat()
            log = os.path.join(self.root, 'packs', 'log', f'{day}-s{self.shard}.md')
            os.makedirs(os.path.dirname(log), exist_ok=True)
            with open(log, 'a', encoding='utf-8') as f:
                f.write(f'## {datetime.datetime.utcnow():%H:%M} shard {self.shard}\n' + '\n'.join(self.lines) + '\n\n')


def arg(name, default):
    return sys.argv[sys.argv.index(name) + 1] if name in sys.argv else default


if __name__ == '__main__':
    Agent(arg('--root', '.'), arg('--src', '.'), int(arg('--shard', '0')), int(arg('--shards', '1')),
          float(arg('--minutes', '30'))).run()
