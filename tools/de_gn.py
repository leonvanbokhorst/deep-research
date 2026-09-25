#!/usr/bin/env python3
"""German Google News RSS search with Google-redirect decoding -> real URLs.
Usage: de_gn.py "query" [n] [hl] [gl] [ceid]
"""
import sys, re, html, json, subprocess, urllib.parse
from concurrent.futures import ThreadPoolExecutor

UA = ("Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 "
      "(KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36")


def curl(url, data=None):
    c = ["curl", "-sL", "-m", "25", "-A", UA, "-H", "Accept-Language: en-US,en;q=0.9"]
    if data:
        c += ["-H", "Content-Type: application/x-www-form-urlencoded;charset=UTF-8",
              "--data-raw", data]
    return subprocess.run(c + [url], capture_output=True, text=True).stdout


def decode(gn):
    try:
        p = curl(gn)
        sg = re.search(r'data-n-a-sg="([^"]+)"', p)
        ts = re.search(r'data-n-a-ts="([^"]+)"', p)
        if not (sg and ts):
            return ""
        aid = gn.split("/articles/")[1].split("?")[0]
        req = ["garturlreq",
               [["X", "X", ["X", "X"], None, None, 1, 1, "US:en", None, 1,
                 None, None, None, None, None, 0, 1],
                "X", "X", 1, [1, 1, 1], 1, 1, None, 0, 0, None, 0],
               aid, int(ts.group(1)), sg.group(1)]
        pl = json.dumps([[["Fbv4je", json.dumps(req), None, "generic"]]])
        out = curl("https://news.google.com/_/DotsSplashUi/data/batchexecute?rpcids=Fbv4je",
                   "f.req=" + urllib.parse.quote(pl))
        m = re.search(r'"(https?://[^"\\]+)"', out)
        if m:
            return m.group(1).replace("\\u003d", "=").replace("\\u0026", "&")
    except Exception:
        pass
    return ""


def main():
    q = sys.argv[1]
    n = int(sys.argv[2]) if len(sys.argv) > 2 else 12
    hl = sys.argv[3] if len(sys.argv) > 3 else "de-DE"
    gl = sys.argv[4] if len(sys.argv) > 4 else "DE"
    ceid = sys.argv[5] if len(sys.argv) > 5 else "DE:de"
    url = ("https://news.google.com/rss/search?q=" + urllib.parse.quote(q) +
           f"&hl={hl}&gl={gl}&ceid={ceid}")
    d = curl(url)
    items = re.findall(r"<item>(.*?)</item>", d, re.S)
    print("### QUERY:", q, "| results:", len(items))
    rows = []
    for it in items[:n]:
        t = re.search(r"<title>(.*?)</title>", it, re.S)
        p = re.search(r"<pubDate>(.*?)</pubDate>", it, re.S)
        s = re.search(r"<source[^>]*>(.*?)</source>", it, re.S)
        u = re.search(r"<description>(.*?)</description>", it, re.S)
        gn = ""
        if u:
            mm = re.findall(r'href="([^"]+)"', html.unescape(u.group(1)))
            if mm:
                gn = mm[0]
        rows.append((html.unescape(t.group(1)) if t else "?",
                     html.unescape(s.group(1)) if s else "?",
                     p.group(1) if p else "", gn))
    with ThreadPoolExecutor(max_workers=6) as ex:
        reals = list(ex.map(lambda r: decode(r[3]) if r[3] else "", rows))
    for (title, src, date, gn), real in zip(rows, reals):
        print("-", title)
        print("  src:", src, "|", date)
        print("  url:", real or "UNRESOLVED")


if __name__ == "__main__":
    main()
