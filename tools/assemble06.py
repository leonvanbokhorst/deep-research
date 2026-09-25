#!/usr/bin/env python3
"""Assemble the final strand-06 findings file from its parts.

Order:
  header (§0-§1)  ->  synthesis (§2)  ->  Part A (§3)  ->  Part B (§4)
  ->  Part C (§5)  ->  gaps (§6)

The Part B section is the lead analyst's verified core, optionally followed by the
Part B sub-strand's supplementary file if it exists.
"""
import os, sys, re

BASE = "/Users/leonvanbokhorst/repos/deep-research/amplification/research"
PARTS = os.path.join(BASE, "parts")
OUT = os.path.join(BASE, "06-prebunk-reflexivity-iw.md")
HEADER_SRC = os.path.join(PARTS, "header.md")  # static front matter, written once

def read(p):
    with open(p, encoding="utf-8") as f:
        return f.read()

def retitle(text, new_title):
    """Replace the first markdown heading line with new_title, keep the rest."""
    lines = text.split("\n")
    for i, ln in enumerate(lines):
        if ln.startswith("#"):
            lines[i] = new_title
            break
    return "\n".join(lines)

# --- header: static front matter (§0-§1) ---
header = read(HEADER_SRC)
header = re.split(r"\n<!-- SECTIONS A, B, C", header)[0].rstrip()
# drop a trailing horizontal rule so the join does not double it
while header.endswith("-"):
    header = header[:-1].rstrip()
header += "\n"

synthesis = read(os.path.join(PARTS, "synthesis.md")).strip() + "\n"

partA = retitle(read(os.path.join(PARTS, "part-A-prebunking.md")).strip(),
                "## 3. Part A — Prebunking / psychological inoculation as institutional defence")

partB_core = retitle(read(os.path.join(PARTS, "part-B-core-lead.md")).strip(),
                     "## 4. Part B — The reflexivity trap: institutionally rational responses that amplify the perceived threat")

supp_path = os.path.join(PARTS, "part-B-reflexivity.md")
if os.path.exists(supp_path) and os.path.getsize(supp_path) > 2000:
    supp = read(supp_path).strip()
    supp = retitle(supp, "### 4.6 Part B supplement — German, EU, GAO/CRS and NASA/FAA material")
    partB = partB_core + "\n\n---\n\n" + supp + "\n"
    sys.stderr.write("assembled WITH Part B supplement\n")
else:
    partB = partB_core + "\n"
    sys.stderr.write("assembled WITHOUT Part B supplement (not present)\n")

partC = retitle(read(os.path.join(PARTS, "part-C-iw.md")).strip(),
                "## 5. Part C — Indicators & warnings (I&W) for detecting a deliberate amplification campaign")

gaps = read(os.path.join(PARTS, "gaps.md")).strip() + "\n"

doc = "\n\n---\n\n".join([header.strip(), synthesis.strip(), partA.strip(),
                          partB.strip(), partC.strip(), gaps.strip()]) + "\n"

with open(OUT, "w", encoding="utf-8") as f:
    f.write(doc)

n_claims = len(re.findall(r"\*\*Claim\*\*", doc))
print(f"wrote {OUT}")
print(f"  size: {len(doc):,} bytes / {doc.count(chr(10)):,} lines")
print(f"  claim blocks: {n_claims}")
print(f"  grade-A mentions: {len(re.findall(r'Grade: \*\*?A', doc))}")
