#!/usr/bin/env python3
"""Crossref/OpenAlex-ish lookup with polite headers and 429 backoff.
Usage:
  cr.py doi 10.1126/sciadv.abo6254
  cr.py search "title words here" [rows]
  cr.py bib "bibliographic string" [rows]
Prints title / journal / date / vol-iss-art / authors / DOI / abstract snippet.
"""
import json, sys, time, urllib.parse, urllib.request

UA = "DeepResearchStrand06/1.0 (mailto:research@example.org)"

def get(url, tries=6):
    for i in range(tries):
        try:
            req = urllib.request.Request(url, headers={"User-Agent": UA, "Accept": "application/json"})
            with urllib.request.urlopen(req, timeout=40) as r:
                return json.loads(r.read().decode("utf-8", "replace"))
        except urllib.error.HTTPError as e:
            if e.code in (429, 503):
                time.sleep(2 + 3 * i)
                continue
            if e.code == 404:
                return {"__err__": "404 not found"}
            time.sleep(2 + 2 * i)
        except Exception:
            time.sleep(2 + 2 * i)
    return {"__err__": "failed after retries"}

def show(m):
    if not m or m.get("__err__"):
        print("  !!", (m or {}).get("__err__", "nothing"))
        return
    print("  TITLE   :", (m.get("title") or ["?"])[0])
    print("  JOURNAL :", (m.get("container-title") or ["?"])[0])
    print("  DATE    :", m.get("published", {}).get("date-parts") or m.get("created", {}).get("date-parts"))
    print("  VOL/ISS :", m.get("volume"), "/", m.get("issue"), "art:", m.get("article-number"), "pg:", m.get("page"))
    print("  AUTHORS :", "; ".join((a.get("family", "") + " " + a.get("given", "")).strip() for a in (m.get("author") or [])[:8]))
    print("  DOI     :", m.get("DOI"))
    ab = m.get("abstract")
    if ab:
        import re
        ab = re.sub(r"<[^>]+>", " ", ab)
        ab = re.sub(r"\s+", " ", ab).strip()
        print("  ABSTRACT:", ab[:1400])

mode = sys.argv[1]
if mode == "doi":
    for doi in sys.argv[2:]:
        print("=====", doi)
        d = get("https://api.crossref.org/works/" + urllib.parse.quote(doi))
        if d.get("__err__"):
            print("  !!", d["__err__"])
        else:
            show(d.get("message"))
else:
    q = sys.argv[2]
    rows = sys.argv[3] if len(sys.argv) > 3 else "8"
    key = "query.title" if mode == "search" else "query.bibliographic"
    d = get("https://api.crossref.org/works?" + urllib.parse.urlencode({key: q, "rows": rows,
             "select": "title,DOI,container-title,published,volume,issue,article-number,author,abstract"}))
    if d.get("__err__"):
        print("!!", d["__err__"]); sys.exit(1)
    items = d.get("message", {}).get("items", [])
    print("### ", mode, ":", q, "| results:", len(items))
    for m in items:
        show(m)
        print()
