#!/usr/bin/env python3
"""Fails when an asset path declared in deep_focus_visuals.dart is missing on disk."""
import pathlib
import re
import sys

root = pathlib.Path(__file__).resolve().parent.parent
src = (root / "lib/core/theme/deep_focus_visuals.dart").read_text(encoding="utf-8")
paths = re.findall(r"'(assets/[^']+)'", src)
missing = [p for p in paths if not (root / p).is_file()]
if missing:
    print("Missing assets:\n  " + "\n  ".join(missing))
    sys.exit(1)
print(f"asset files OK ({len(paths)} declared paths exist)")
