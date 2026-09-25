#!/bin/bash
# Usage: ./ddg.sh "query"  -> prints decoded result URLs from DDG via r.jina.ai
Q=$(python3 -c "import urllib.parse,sys;print(urllib.parse.quote_plus(sys.argv[1]))" "$1")
curl -sS -m 90 "https://r.jina.ai/https://html.duckduckgo.com/html/?q=$Q" 2>/dev/null | python3 -c "
import re,sys,urllib.parse
t=sys.stdin.read()
seen=set()
for m in re.finditer(r'uddg=([^&\)\s]+)',t):
    u=urllib.parse.unquote(m.group(1))
    if u in seen: continue
    seen.add(u)
    print(u)
"
