#!/usr/bin/env python3
"""Bing News RSS search. Usage: n.py "query" [n] [mkt]"""
import sys, re, html, urllib.parse, subprocess

q = sys.argv[1]
n = int(sys.argv[2]) if len(sys.argv) > 2 else 10
mkt = sys.argv[3] if len(sys.argv) > 3 else ""
url = "https://www.bing.com/news/search?q=" + urllib.parse.quote_plus(q) + "&format=RSS"
if mkt:
    url += "&mkt=" + mkt + "&setlang=" + mkt.split("-")[0]
UA = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0 Safari/537.36"
out = subprocess.run(["curl", "-sS", "-m", "30", "-A", UA, url], capture_output=True, text=True).stdout
print("###", q, ("[" + mkt + "]") if mkt else "")
items = re.findall(r"<item>(.*?)</item>", out, re.S)
if not items:
    print("(no items; len=%d)" % len(out))
for it in items[:n]:
    t = re.search(r"<title>(.*?)</title>", it, re.S)
    d = re.search(r"<pubDate>(.*?)</pubDate>", it, re.S)
    desc = re.search(r"<description>(.*?)</description>", it, re.S)
    link = re.search(r"<link>(.*?)</link>", it, re.S)
    real = ""
    if link:
        m = re.search(r"url=([^&]+)", html.unescape(link.group(1)))
        real = urllib.parse.unquote(m.group(1)) if m else html.unescape(link.group(1))
    print("-", html.unescape(t.group(1)) if t else "?", "|", d.group(1) if d else "")
    print("  ", real)
    if desc:
        print("  ", re.sub("<[^>]+>", "", html.unescape(desc.group(1)))[:260])
