#!/usr/bin/env python3
"""arXiv search helper with rate-limit backoff. Usage: python3 ax.py 'query1' 'query2' ..."""
import sys, re, html, time, subprocess

def fetch(url, tries=4):
    for k in range(tries):
        out = subprocess.run(["curl", "-sL", url], capture_output=True, text=True).stdout
        if out.strip():
            return out
        time.sleep(8 * (k + 1))
    return ""

def search(q, n=12):
    qq = q.replace(" ", "+")
    url = f"http://export.arxiv.org/api/query?search_query={qq}&max_results={n}"
    out = fetch(url)
    es = re.findall(r"<entry>(.*?)</entry>", out, re.S)
    parsed = re.search(r"<title>arXiv Query: (.*?)</title>", out, re.S)
    print(f"### QUERY: {q}  -> {len(es)} results")
    if parsed:
        print(f"    [parsed as: {html.unescape(parsed.group(1))}]")
    for e in es:
        t = re.search(r"<title>(.*?)</title>", e, re.S)
        d = re.search(r"<published>(.*?)</published>", e, re.S)
        i = re.search(r"<id>(.*?)</id>", e, re.S)
        a = re.search(r"<summary>(.*?)</summary>", e, re.S)
        title = html.unescape(t.group(1)).strip().replace("\n", " ") if t else "?"
        print(f"- {title} | {d.group(1)[:10] if d else '?'} | {i.group(1) if i else '?'}")
        if a:
            print("    ABS:", html.unescape(a.group(1)).strip().replace("\n", " ")[:600])
    print()
    time.sleep(6)

if __name__ == "__main__":
    for q in sys.argv[1:]:
        search(q)
