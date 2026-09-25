#!/usr/bin/env python3
"""Fetch a URL and print readable text. Usage: f.py URL [maxchars]"""
import sys, re, html, subprocess

url = sys.argv[1]
maxc = int(sys.argv[2]) if len(sys.argv) > 2 else 6000
UA = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0 Safari/537.36"
p = subprocess.run(["curl", "-sSL", "-m", "40", "-A", UA, "-H", "Accept-Language: en-US,en;q=0.9", url],
                   capture_output=True, text=True)
t = p.stdout
if not t:
    print("[empty body]"); sys.exit(0)
t = re.sub(r"<(script|style|noscript|svg|head)[^>]*>.*?</\1>", " ", t, flags=re.S | re.I)
t = re.sub(r"<!--.*?-->", " ", t, flags=re.S)
t = re.sub(r"<(br|/p|/div|/li|/h[1-6]|/tr)[^>]*>", "\n", t, flags=re.I)
t = re.sub(r"<[^>]+>", " ", t)
t = html.unescape(t)
t = re.sub(r"[ \t\xa0]+", " ", t)
t = re.sub(r"\n\s*\n+", "\n", t)
print(t.strip()[:maxc])
