#!/usr/bin/env python3
"""Bing HTML search scraper. Usage: s.py "query" [n]"""
import sys, re, html, urllib.parse, subprocess

q = sys.argv[1]
n = int(sys.argv[2]) if len(sys.argv) > 2 else 15
url = "https://www.bing.com/search?q=" + urllib.parse.quote_plus(q) + "&count=30&setlang=en"
UA = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0 Safari/537.36"
out = subprocess.run(["curl", "-sS", "-m", "30", "-A", UA, "-H", "Accept-Language: en-US,en;q=0.9", url],
                     capture_output=True, text=True).stdout
print("###", q)
seen = set()
count = 0
for m in re.finditer(r'<li class="b_algo".*?</li>', out, re.S):
    blk = m.group(0)
    a = re.search(r'<h2[^>]*>\s*<a[^>]*href="([^"]+)"[^>]*>(.*?)</a>', blk, re.S)
    if not a:
        continue
    link, title = a.group(1), re.sub('<[^>]+>', '', html.unescape(a.group(2)))
    snip = re.search(r'<p[^>]*>(.*?)</p>', blk, re.S)
    sn = re.sub('<[^>]+>', '', html.unescape(snip.group(1)))[:300] if snip else ''
    if link in seen:
        continue
    seen.add(link)
    count += 1
    print(f"[{count}] {title.strip()}")
    print(f"    {link}")
    print(f"    {sn.strip()}")
    if count >= n:
        break
if count == 0:
    for m in re.findall(r'<a[^>]+href="(https?://[^"]+)"[^>]*>(.*?)</a>', out, re.S)[:n]:
        t = re.sub('<[^>]+>', '', html.unescape(m[1]))[:100]
        if t.strip():
            print("~", m[0], "|", t)
