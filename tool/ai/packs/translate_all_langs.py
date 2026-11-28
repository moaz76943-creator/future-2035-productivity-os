#!/usr/bin/env python3
import argparse, csv, io, json, os, re, subprocess, sys, time, urllib.error, urllib.request
from collections import defaultdict

HEADER = ["lang", "id", "lvl", "pos", "main", "sub", "ar", "target", "pron"]
EXCLUDED_LANGS = {"he", "iw", "syr"}
AR_RE = re.compile(r"[\u0600-\u06FF]")
ASCII_ONLY_RE = re.compile(r"^[A-Za-z0-9\s\-.,'\"()!?/:;+]+$")
ARABIC_SCRIPT_LANGS = {"ar", "fa", "ur", "ps", "sd", "ug", "ks", "ckb", "ku"}
NON_LATIN_LANGS = {
    "ar", "fa", "ur", "ps", "sd", "ug", "ru", "uk", "bg", "sr", "be", "mk", "kk",
    "ky", "mn", "tg", "el", "zh", "zh-cn", "zh-tw", "zh_hant", "ja", "ko", "hi",
    "bn", "ta", "te", "ml", "kn", "gu", "pa", "mr", "ne", "si", "th", "my", "km",
    "lo", "ka", "hy", "am", "ti", "dv"
}
BAD_MODEL_TOKENS = (
    "embedding", "imagen", "image", "veo", "tts", "audio", "live", "aqa",
    "robotics", "computer-use", "gemma", "learnlm", "nano", "vision",
    "lyria", "banana", "transcribe", "customtools", "deep-research", "antigravity"
)


class KeyRing:
    def __init__(self, keys: list):
        self.keys = keys
        self.idx = 0

    def current(self) -> str:
        return self.keys[self.idx]

    def rotate(self) -> bool:
        if len(self.keys) <= 1:
            return False
        self.idx = (self.idx + 1) % len(self.keys)
        return True


def collect_keys() -> list:
    keys = []
    seen = set()
    for i in range(1, 20):
        val = os.environ.get(f"DF_GEMINI_KEY_{i}", "").strip()
        if val and val not in seen:
            seen.add(val)
            keys.append(val)
    extra = os.environ.get("GEMINI_API_KEY", "").strip()
    for part in re.split(r"[\s,;]+", extra):
        p = part.strip()
        if p and p not in seen:
            seen.add(p)
            keys.append(p)
    return keys


def norm_lang(code: str) -> str:
    c = code.strip().replace("_", "-")
    low = c.lower()
    if low in ("zh", "zh-cn", "zh-hans"):
        return "zh-CN"
    if low in ("zh-tw", "zh-hant"):
        return "zh-TW"
    if low == "pt-br":
        return "pt-BR"
    return low


def pack_code(tag: str) -> str:
    n = norm_lang(tag)
    if n == "zh-TW":
        return "zh_Hant"
    if n == "zh-CN":
        return "zh"
    return n.split("-")[0]


def http_json(url: str, payload=None, timeout=150):
    data = json.dumps(payload).encode("utf-8") if payload is not None else None
    headers = {"Content-Type": "application/json"} if data is not None else {}
    req = urllib.request.Request(url, data=data, headers=headers)
    with urllib.request.urlopen(req, timeout=timeout) as resp:
        return json.loads(resp.read().decode("utf-8"))


def discover_models(ring: KeyRing):
    last_err = None
    for _ in range(len(ring.keys)):
        url = f"https://generativelanguage.googleapis.com/v1beta/models?key={ring.current()}&pageSize=200"
        try:
            res = http_json(url, timeout=30)
            candidates = []
            for m in res.get("models", []):
                short = m.get("name", "").replace("models/", "")
                low = short.lower()
                if "generateContent" not in m.get("supportedGenerationMethods", []):
                    continue
                if not ("gemini" in low or "neon" in low):
                    continue
                if any(b in low for b in BAD_MODEL_TOKENS):
                    continue
                vm = re.search(r"(?:gemini|neon)[-_](\d+)(?:\.(\d+))?", low)
                maj = int(vm.group(1)) if vm else 0
                minr = int(vm.group(2)) if (vm and vm.group(2)) else 0
                is_neon = 1 if "neon" in low else 0
                is_lite = 1 if "lite" in low else 0
                if "ultra" in low:
                    tier = 4
                elif is_neon:
                    tier = 3
                elif "pro" in low:
                    tier = 2
                elif "flash" in low and not is_lite:
                    tier = 1
                else:
                    tier = 0
                is_flash = 1 if ("flash" in low and "omni" not in low) else 0
                is_latest = 1 if "latest" in low else 0
                is_stable = 0 if any(t in low for t in ("exp", "preview", "001", "002")) else 1
                score = (is_flash, is_lite, is_latest, maj, minr, is_stable, tier, low)
                candidates.append((score, short, m.get("displayName", short)))
            candidates.sort(key=lambda x: x[0], reverse=True)
            return candidates
        except Exception as e:
            last_err = e
            ring.rotate()
    raise RuntimeError(f"Failed to list models with all keys: {last_err}")


def load_world_languages(repo_root: str):
    wl = os.path.join(repo_root, "lib", "features", "flashcards", "domain", "world_languages.dart")
    langs = {}
    if os.path.isfile(wl):
        txt = open(wl, encoding="utf-8", errors="replace").read()
        for code, native in re.findall(r"'([a-zA-Z]{2,3}(?:-[a-zA-Z0-9]{2,4})?)'\s*:\s*'([^']+)'", txt):
            n = norm_lang(code)
            if n.split("-")[0] in EXCLUDED_LANGS or n in ("ar", "en"):
                continue
            langs.setdefault(n, native)
    return langs


def read_csv_text(text: str, store: dict):
    reader = csv.reader(io.StringIO(text))
    header = next(reader, None)
    if not header:
        return 0
    count = 0
    for r in reader:
        if len(r) != 9:
            continue
        lang = norm_lang(r[0])
        if lang.split("-")[0] in EXCLUDED_LANGS:
            continue
        _, wid, lvl, pos, main, sub, ar, target, pron = [x.strip() for x in r]
        if not (ar and target and pron):
            continue
        if lang != "en":
            ok, _ = validate_item(lang, target, pron)
            if not ok:
                continue
        key = (main.lower(), sub.lower(), ar)
        store[lang][key] = [lang, wid, lvl, pos, main, sub, ar, target, pron]
        count += 1
    return count


def load_existing_data(repo_root: str, master_path: str):
    store = defaultdict(dict)
    for fn in ("master_g1.csv", "master_g2.csv", "master_g3.csv", "master_all.csv"):
        try:
            raw = subprocess.check_output(
                ["git", "-C", repo_root, "show", f"origin/content-packs:packs/seed/{fn}"],
                text=True, stderr=subprocess.DEVNULL
            )
            read_csv_text(raw, store)
        except Exception:
            pass
    for rel in (
        ("packs", "seed", "master_g1.csv"),
        ("packs", "seed", "master_g2.csv"),
        ("packs", "seed", "master_g3.csv"),
        ("packs", "backup", "master_all.csv"),
        ("packs", "seed", "master_all.csv"),
    ):
        p = os.path.join(repo_root, *rel)
        if os.path.isfile(p):
            read_csv_text(open(p, encoding="utf-8-sig", errors="replace").read(), store)
    if os.path.isfile(master_path):
        read_csv_text(open(master_path, encoding="utf-8-sig", errors="replace").read(), store)
    return store


def save_master(store: dict, master_path: str):
    os.makedirs(os.path.dirname(master_path), exist_ok=True)
    tmp = master_path + ".tmp"
    total = 0
    with open(tmp, "w", encoding="utf-8", newline="") as f:
        w = csv.writer(f)
        w.writerow(HEADER)
        lang_order = sorted(store.keys(), key=lambda x: (x != "en", x))
        for lang in lang_order:
            rows = sorted(store[lang].values(), key=lambda r: (r[4].lower(), r[5].lower(), r[1]))
            for idx, r in enumerate(rows, 1):
                wid = r[1] if r[1] else f"{lang.replace('-', '_')}_{idx:04d}"
                w.writerow([lang, wid, r[2], r[3], r[4], r[5], r[6], r[7], r[8]])
                total += 1
    os.replace(tmp, master_path)
    return total


def validate_item(lang: str, target: str, pron: str):
    t = re.sub(r"\s+", " ", (target or "").strip())
    p = re.sub(r"\s+", " ", (pron or "").strip())
    if not t or not p:
        return False, "empty target or pron"
    if any(ch in t for ch in "/():*\n") or len(t) > 45:
        return False, "junk chars or too long"
    if p.lower() == t.lower() or len(p) < 2:
        return False, "pron equals target or too short"
    low = lang.lower()
    base = low.split("-")[0]
    if base not in ARABIC_SCRIPT_LANGS and AR_RE.search(t):
        return False, "Arabic script leaked into target"
    if (low in NON_LATIN_LANGS or base in NON_LATIN_LANGS) and ASCII_ONLY_RE.match(t):
        return False, "Latin-only target in non-Latin language"
    return True, (t, p)


def call_gemini(ring: KeyRing, model: str, prompt: str):
    payload = {
        "contents": [{"role": "user", "parts": [{"text": prompt}]}],
        "generationConfig": {
            "temperature": 0.1,
            "maxOutputTokens": 16384,
            "responseMimeType": "application/json",
        },
    }
    backoff = 3
    rotated_count = 0
    max_attempts = max(8, len(ring.keys) * 2)

    for attempt in range(max_attempts):
        url = f"https://generativelanguage.googleapis.com/v1beta/models/{model}:generateContent?key={ring.current()}"
        try:
            res = http_json(url, payload=payload, timeout=150)
            cands = res.get("candidates") or []
            if not cands:
                raise RuntimeError(f"No candidates: {str(res)[:200]}")
            parts = cands[0].get("content", {}).get("parts", [])
            texts = [p.get("text", "") for p in parts if isinstance(p, dict) and not p.get("thought") and p.get("text")]
            raw = "\n".join(texts).strip()
            raw = re.sub(r"^```(?:json)?\s*|\s*```$", "", raw, flags=re.I | re.S).strip()
            m = re.search(r"(\[.*\])", raw, flags=re.S)
            if not m:
                raise ValueError(f"No JSON array: {raw[:200]}")
            return json.loads(m.group(1))
        except urllib.error.HTTPError as e:
            body = e.read().decode("utf-8", errors="replace")[:200]
            if e.code in (429, 403):
                if rotated_count < len(ring.keys) - 1 and ring.rotate():
                    rotated_count += 1
                    time.sleep(0.3)
                    continue
                raise RuntimeError(f"HTTP {e.code} on {model} (all keys): {body}")
            if e.code in (500, 502, 503, 504) and attempt < 3:
                time.sleep(min(backoff, 10))
                backoff = min(backoff * 2, 10)
                continue
            raise RuntimeError(f"HTTP {e.code} on {model}: {body}")
        except Exception:
            if attempt < 2:
                time.sleep(3)
                continue
            raise


def build_prompt(lang: str, native_name: str, items: list, retry_notes=None):
    base = lang.lower().split("-")[0]
    if base in ("zh", "ja", "ko"):
        pron_rule = "Use standard Pinyin with tone marks for Chinese, Romaji for Japanese, or Revised Romanization for Korean."
    else:
        pron_rule = "Use clear IPA (e.g. /.../) or simple Arabic phonetic pronunciation; never leave pron empty."
    extra = f"\nPrevious errors to FIX strictly:\n{retry_notes}\n" if retry_notes else ""
    compact = [{"i": idx, "pos": r[3], "topic": f"{r[4]}/{r[5]}", "ar": r[6], "en": r[7]} for idx, r in items]
    fmt_example = '[{"i": 1, "target": "<word>", "pron": "<pronunciation>"}]'
    return (
        f"You are an expert lexicographer building a verified vocabulary database for language code '{lang}' ({native_name}).\n"
        f"Translate EVERY item below accurately into natural, everyday '{lang}' ({native_name}) matching its part of speech (pos), topic, Arabic meaning (ar), and English reference (en).\n"
        "STRICT RULES:\n"
        f"1. Output ONLY a JSON array matching: {fmt_example}\n"
        "2. Every single input index 'i' MUST appear exactly once.\n"
        f"3. 'target' MUST be in the authentic native script of '{lang}' (never copy English or Arabic unless genuinely standard in that script).\n"
        "4. Give ONE clean natural word/phrase in 'target' (no explanations, notes, or slashes).\n"
        f"5. {pron_rule}\n"
        f"{extra}"
        "INPUT:\n" + json.dumps(compact, ensure_ascii=False)
    )


def translate_language(ring: KeyRing, models: list, lang: str, native: str, en_concepts: list, store: dict, batch_size: int, delay: float):
    existing = store[lang]
    missing = [r for r in en_concepts if (r[4].lower(), r[5].lower(), r[6]) not in existing]
    if not missing:
        return 0, 0
    missing.sort(key=lambda r: (r[4].lower(), r[5].lower(), r[1]))
    added = failed = 0
    model_idx = 0

    for start in range(0, len(missing), batch_size):
        chunk = list(enumerate(missing[start:start + batch_size], start=1))
        pending = dict(chunk)
        retry_notes = None

        for _ in range(3):
            if not pending:
                break
            req_items = sorted(pending.items())
            prompt = build_prompt(lang, native, req_items, retry_notes)
            data = None
            while model_idx < len(models):
                try:
                    data = call_gemini(ring, models[model_idx], prompt)
                    break
                except Exception as e:
                    if model_idx + 1 < len(models):
                        print(f"    ! {models[model_idx]} failed ({str(e)[:80]}), switching to {models[model_idx+1]}")
                        model_idx += 1
                    else:
                        print(f"    ! Batch error: {e}")
                        break
            if not isinstance(data, list):
                break
            by_i = {item.get("i"): item for item in data if isinstance(item, dict) and "i" in item}
            next_pending = {}
            errs = []
            for idx, en_row in req_items:
                got = by_i.get(idx)
                if not got:
                    next_pending[idx] = en_row
                    errs.append(f"i={idx} ({en_row[7]}): missing")
                    continue
                ok, res = validate_item(lang, str(got.get("target", "")), str(got.get("pron", "")))
                if not ok:
                    next_pending[idx] = en_row
                    errs.append(f"i={idx} ({en_row[7]}): {res}")
                    continue
                t_val, p_val = res
                k = (en_row[4].lower(), en_row[5].lower(), en_row[6])
                wid = f"{lang.replace('-', '_')}_{len(existing)+1:04d}"
                existing[k] = [lang, wid, en_row[2], en_row[3], en_row[4], en_row[5], en_row[6], t_val, p_val]
                added += 1
            pending = next_pending
            retry_notes = "\n".join(errs[:15]) if errs else None
            ring.rotate()
            time.sleep(delay)

        failed += len(pending)
    return added, failed


def sync_content_packs(repo_root: str, master_path: str, store: dict, push: bool):
    wt = os.path.expanduser(f"~/.tmp/cp_sync_{os.getpid()}")
    try:
        subprocess.check_call(["git", "-C", repo_root, "fetch", "origin", "content-packs"])
        subprocess.check_call(["git", "-C", repo_root, "worktree", "add", "-B", "content-packs", wt, "origin/content-packs"])

        en_pack = json.load(open(os.path.join(wt, "packs", "en.json"), encoding="utf-8"))
        en_items = en_pack.get("items", {})
        en_rows = store.get("en", {})
        triplet_to_ar = {(r[4].lower(), r[5].lower(), r[7].lower()): r[6] for r in en_rows.values()}
        ar_to_key = {}
        ar_items = {}
        for ckey, en_word in en_items.items():
            parts = ckey.split(".")
            if len(parts) >= 2:
                ar_word = triplet_to_ar.get((parts[0].lower(), parts[1].lower(), en_word.strip().lower()))
                if ar_word:
                    ar_items[ckey] = ar_word
                    ar_to_key[(parts[0].lower(), parts[1].lower(), ar_word)] = ckey

        ar_path = os.path.join(wt, "packs", "ar.json")
        ar_pack = json.load(open(ar_path, encoding="utf-8")) if os.path.isfile(ar_path) else {"lang": "ar", "names": {}, "items": {}, "pron": {}}
        ar_pack["lang"] = "ar"
        ar_pack["items"] = dict(sorted({**ar_pack.get("items", {}), **ar_items}.items()))
        json.dump(ar_pack, open(ar_path, "w", encoding="utf-8"), ensure_ascii=False, indent=2, sort_keys=True)

        updated = ["ar"]
        for lang, rows in sorted(store.items()):
            if lang in ("en", "ar") or len(rows) < 650:
                continue
            pcode = pack_code(lang)
            ppath = os.path.join(wt, "packs", f"{pcode}.json")
            pobj = json.load(open(ppath, encoding="utf-8")) if os.path.isfile(ppath) else {"lang": pcode, "names": dict(en_pack.get("names", {})), "items": {}, "pron": {}}
            items = dict(pobj.get("items", {}))
            pron = dict(pobj.get("pron", {}))
            for k3, r in rows.items():
                ckey = ar_to_key.get(k3)
                if ckey:
                    items[ckey] = r[7]
                    pron[ckey] = r[8]
            pobj["lang"] = pcode
            pobj["items"] = dict(sorted(items.items()))
            pobj["pron"] = dict(sorted(pron.items()))
            json.dump(pobj, open(ppath, "w", encoding="utf-8"), ensure_ascii=False, indent=2, sort_keys=True)
            updated.append(pcode)

        seed_master = os.path.join(wt, "packs", "seed", "master_all.csv")
        os.makedirs(os.path.dirname(seed_master), exist_ok=True)
        with open(master_path, "rb") as src, open(seed_master, "wb") as dst:
            dst.write(src.read())

        print(f"Synced {len(updated)} packs (ar={len(ar_pack['items'])}/720) + master_all.csv")
        if push:
            subprocess.check_call(["git", "-C", wt, "add", "packs/"])
            diff = subprocess.run(["git", "-C", wt, "diff", "--cached", "--quiet"])
            if diff.returncode != 0:
                subprocess.check_call(["git", "-C", wt, "commit", "-m", f"feat(content-packs): unified master_all.csv and {len(updated)} packs"])
                subprocess.check_call(["git", "-C", wt, "push", "origin", "content-packs"])
                print("Pushed master_all.csv and updated packs to origin/content-packs!")
    finally:
        subprocess.run(["git", "-C", repo_root, "worktree", "remove", "--force", wt], stderr=subprocess.DEVNULL)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--repo", default=".")
    ap.add_argument("--out", default="/tmp/master_all.csv")
    ap.add_argument("--model", default="")
    ap.add_argument("--langs", default="")
    ap.add_argument("--max-langs", type=int, default=0)
    ap.add_argument("--batch-size", type=int, default=50)
    ap.add_argument("--delay", type=float, default=0.5)
    ap.add_argument("--push-packs", action="store_true")
    args = ap.parse_args()

    keys = collect_keys()
    print(f"Loaded {len(keys)} Gemini API key(s)")
    if not keys:
        sys.exit("No Gemini keys found in environment (DF_GEMINI_KEY_1..9 / GEMINI_API_KEY)")

    store = load_existing_data(args.repo, args.out)
    total = save_master(store, args.out)
    en_concepts = list(store.get("en", {}).values())
    print(f"Initial merged master_all.csv: {total} rows across {len(store)} langs (en={len(en_concepts)})")
    if not en_concepts:
        sys.exit("ERROR: English baseline (en) not found!")

    ring = KeyRing(keys)
    cands = discover_models(ring)
    if not cands:
        sys.exit("No live Gemini/Neon models available.")
    ranked = [c[1] for c in cands]
    if args.model:
        pin = args.model.replace("models/", "")
        ranked = [pin] + [m for m in ranked if m != pin]
    print(f"Active model: {ranked[0]} (fallbacks: {', '.join(ranked[1:4])})")

    world = load_world_languages(args.repo)
    targets = [norm_lang(x) for x in args.langs.split(",") if x.strip()] if args.langs else sorted(world.keys())
    targets = [t for t in targets if t.split("-")[0] not in EXCLUDED_LANGS and t not in ("en", "ar")]

    todo = [t for t in targets if len(store[t]) < len(en_concepts)]
    if args.max_langs > 0:
        todo = todo[:args.max_langs]
    print(f"Target languages: {len(targets)} | Remaining in this run: {len(todo)}")

    for idx, lang in enumerate(todo, 1):
        native = world.get(lang, lang)
        before = len(store[lang])
        added, failed = translate_language(ring, ranked[:4], lang, native, en_concepts, store, args.batch_size, args.delay)
        save_master(store, args.out)
        after = len(store[lang])
        print(f"  [{idx}/{len(todo)}] {lang:6s} ({native}): {before} -> {after}/{len(en_concepts)} (+{added}, failed={failed})")

    if args.push_packs:
        sync_content_packs(args.repo, args.out, store, push=True)

    final_total = save_master(store, args.out)
    print(f"DONE! Unified master_all.csv: {final_total} rows across {len(store)} languages.")


if __name__ == "__main__":
    main()
