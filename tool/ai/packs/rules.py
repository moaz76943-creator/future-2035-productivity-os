"""Deterministic rules for word packs (no model involved). Anything in doubt is refused."""
import re
import unicodedata

# Concepts never offered (family-friendly and within Islamic guidelines). In doubt: refuse.
BANNED = re.compile(
    r'\b(alcohol|wine|beer|vodka|whisk(e)?y|liquor|cocktail|champagne|bar|pub|nightclub|drunk|pork|pig|'
    r'ham|bacon|lard|gelatin|gambl\w*|casino|bet|betting|lottery|poker|cards? game|dice|horoscope|zodiac|'
    r'astrolog\w*|fortune|magic\w*|witch\w*|spell|idol|statue|cross|church|temple|shrine|santa|christmas|'
    r'easter|halloween|valentine|music\w*|song|sing\w*|guitar|piano|drum\w*|violin|flute|dance|dancing|'
    r'disco|kiss\w*|date|dating|boyfriend|girlfriend|lover|romanc\w*|sexy|sex\w*|bikini|swimsuit|'
    r'underwear|lingerie|bra|tattoo|cigarette|cigar|tobacco|smok\w*|vape|drug\w*|weed|gun|rifle|pistol|'
    r'bomb|weapon|kill\w*|murder|blood|dead|death|grave|ghost|devil|demon|hell|curse|stupid|idiot|ugly|'
    r'fat|hate|interest rate|usury|loan)\b', re.I)
# Emoji that show living beings, body parts or religious/forbidden things are not used.
BAD_EMOJI = re.compile(
    r'(FACE|PERSON|PEOPLE|RUNNER|SURFER|SWIMMER|ROWER|BICYCLIST|SKIER|SNOWBOARDER|GOLFER|LIFTER|JUGGLING|'
    r'CARTWHEEL|WRESTLER|PLAYER|BUST|SILHOUETTE|FOOTPRINT|MERMAID|PRINCE|PRINCESS|DETECTIVE|GUARD|'
    r'WORKER|COOK|FARMER|POLICE|ATHLETE|TRAVELLER|SPEAKING HEAD|MAN|WOMAN|BOY|GIRL|BABY|CHILD|ADULT|HAND|FINGER|THUMB|FIST|EYE|EAR|NOSE|MOUTH|'
    r'LIP|TONGUE|LEG|FOOT|BONE|SKULL|HEART|BRAIN|TOOTH|CAT|DOG|HORSE|COW|OX|PIG|BOAR|SHEEP|RAM|GOAT|'
    r'CAMEL|LLAMA|BIRD|CHICK|HEN|ROOSTER|DUCK|SWAN|OWL|EAGLE|PARROT|PENGUIN|FISH|WHALE|DOLPHIN|SHARK|'
    r'OCTOPUS|SQUID|SHRIMP|CRAB|LOBSTER|SNAIL|BUG|BEE|ANT|BEETLE|SPIDER|SCORPION|MOSQUITO|FLY|WORM|'
    r'SNAKE|LIZARD|DRAGON|DINOSAUR|SAUROPOD|TURTLE|FROG|MONKEY|GORILLA|ORANGUTAN|BEAR|PANDA|KOALA|LION|'
    r'TIGER|LEOPARD|ZEBRA|DEER|BISON|ELEPHANT|MAMMOTH|RHINO|HIPPO|MOUSE|RAT|HAMSTER|RABBIT|SQUIRREL|'
    r'HEDGEHOG|BAT|FOX|WOLF|RACCOON|BADGER|OTTER|SKUNK|KANGAROO|SLOTH|POODLE|UNICORN|BUTTERFLY|'
    r'MOON .*FACE|SUN WITH FACE|GHOST|ALIEN|ROBOT|CLOWN|OGRE|GOBLIN|ANGEL|DEVIL|IMP|SANTA|MAGE|FAIRY|'
    r'VAMPIRE|ZOMBIE|GENIE|MERPERSON|ELF|CROSS|CHURCH|TEMPLE|SHINTO|TORII|MENORAH|STAR OF DAVID|OM|'
    r'YIN YANG|DHARMA|PEACE SYMBOL|ATOM SYMBOL|ZODIAC|ARIES|TAURUS|GEMINI|CANCER|LEO|VIRGO|LIBRA|'
    r'SCORPIUS|SAGITTARIUS|CAPRICORN|AQUARIUS|PISCES|OPHIUCHUS|WINE|BEER|COCKTAIL|SAKE|TUMBLER|'
    r'CHAMPAGNE|BOTTLE WITH POPPING CORK|BACON|MUSICAL|GUITAR|PIANO|DRUM|VIOLIN|TRUMPET|SAXOPHONE|'
    r'MICROPHONE|HEADPHONE|NOTE|DICE|SLOT|JOKER|PLAYING CARD|MAHJONG|CRYSTAL BALL|NAZAR|HAMSA|'
    r'CIGARETTE|PILL|SYRINGE|PISTOL|BOMB|DAGGER|SWORD|KNIFE|COFFIN|URN|BIKINI|BRIEFS|SHORTS|'
    r'LIPSTICK|KISS|RING|DANCER|DANCE|BALLET|SHAMROCK|FLAG|GENDER|MALE|FEMALE|EGGPLANT|PEACH|BANANA)')
SCRIPTS = {
    'Latn': ('LATIN',), 'Arab': ('ARABIC',), 'Cyrl': ('CYRILLIC',), 'Deva': ('DEVANAGARI',),
    'Hans': ('CJK',), 'Hant': ('CJK',), 'Jpan': ('CJK', 'HIRAGANA', 'KATAKANA'), 'Kore': ('HANGUL',),
    'Thai': ('THAI',), 'Grek': ('GREEK',), 'Armn': ('ARMENIAN',), 'Geor': ('GEORGIAN',),
    'Beng': ('BENGALI',), 'Gujr': ('GUJARATI',), 'Guru': ('GURMUKHI',), 'Knda': ('KANNADA',),
    'Mlym': ('MALAYALAM',), 'Sinh': ('SINHALA',), 'Taml': ('TAMIL',), 'Telu': ('TELUGU',),
}
ID = re.compile(r'^[a-z][a-z0-9_]{1,30}$')


def emoji_ok(e):
    if not e:
        return True
    if len(e) > 4:
        return False
    for ch in e:
        if ch in '️‍':
            continue
        name = unicodedata.name(ch, '')
        if not name or BAD_EMOJI.search(name):
            return False
    return True


def concept_problem(cid, c):
    if not ID.match(cid):
        return 'bad id'
    en = str(c.get('en', '')).strip()
    if not en or len(en) > 40 or '\n' in en:
        return 'bad English'
    if BANNED.search(en) or BANNED.search(str(c.get('note', ''))):
        return 'not allowed'
    if not emoji_ok(c.get('emoji', '')):
        return 'emoji not allowed'
    return None


def term_problem(term, script, en=''):
    t = str(term or '').strip()
    if not t or len(t) > 48 or '\n' in t or '<' in t or '{' in t:
        return 'bad text'
    if script != 'Latn' and en and t.lower() == en.lower():
        return 'left in English'
    if re.search(r'\d', t) and not re.search(r'\d', en):
        return 'digits'
    want = SCRIPTS.get(script)
    letters = [ch for ch in t if unicodedata.category(ch).startswith('L')]
    if want and letters:
        ok = sum(1 for ch in letters if any(w in unicodedata.name(ch, '') for w in want))
        if ok / len(letters) < 0.9:
            return f'not in {script} script'
    if script == 'Latn' and BANNED.search(t):
        return 'not allowed'
    return None
