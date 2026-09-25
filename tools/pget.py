#!/usr/bin/env python3
"""Parallel fetch + HTML->text. Usage: pget.py OUTDIR URL [URL...]"""
import sys, os, re, html, subprocess, hashlib
from concurrent.futures import ThreadPoolExecutor

UA = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"

def slug(url):
    base = re.sub(r'^https?://', '', url)
    base = re.sub(r'[^A-Za-z0-9]+', '-', base)[:80].strip('-')
    h = hashlib.md5(url.encode()).hexdigest()[:6]
    return f"{base}-{h}"

def totext(raw):
    raw = re.sub(r'(?is)<(script|style|noscript|svg|nav|footer|header)[^>]*>.*?</\1>', ' ', raw)
    raw = re.sub(r'(?is)<!--.*?-->', ' ', raw)
    raw = re.sub(r'(?i)</(p|div|h[1-6]|li|tr|section|article)>', '\n', raw)
    raw = re.sub(r'(?i)<br[^>]*>', '\n', raw)
    txt = re.sub(r'<[^>]+>', ' ', raw)
    txt = html.unescape(txt)
    txt = re.sub(r'[ \t\xa0]+', ' ', txt)
    txt = re.sub(r'\n\s*\n+', '\n', txt)
    return '\n'.join(l.strip() for l in txt.split('\n') if len(l.strip()) > 2)

def one(args):
    outdir, url = args
    p = subprocess.run(["curl", "-sL", "-m", "60", "-A", UA,
                        "-H", "Accept-Language: en-US,en;q=0.9", url],
                       capture_output=True)
    body = p.stdout
    if not body:
        return f"EMPTY {url}"
    # PDF passthrough
    if body[:4] == b'%PDF':
        tmp = f"/tmp/pg_{slug(url)}.pdf"
        open(tmp, 'wb').write(body)
        t = subprocess.run(["pdftotext", "-layout", tmp, "-"], capture_output=True)
        txt = t.stdout.decode('utf-8', 'ignore')
    else:
        txt = totext(body.decode('utf-8', 'ignore'))
    path = os.path.join(outdir, slug(url) + ".txt")
    open(path, 'w').write(f"URL: {url}\n\n" + txt)
    return f"OK {len(txt.splitlines()):5d} lines  {path}"

if __name__ == "__main__":
    outdir = sys.argv[1]
    urls = sys.argv[2:]
    os.makedirs(outdir, exist_ok=True)
    with ThreadPoolExecutor(max_workers=6) as ex:
        for r in ex.map(one, [(outdir, u) for u in urls]):
            print(r)
