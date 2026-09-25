#!/bin/bash
# Usage: ddgs.sh "query" [n]  -> decoded result URLs via r.jina.ai + DDG html, with retries
Q=$(python3 -c "import urllib.parse,sys;print(urllib.parse.quote_plus(sys.argv[1]))" "$1")
n=${2:-10}
for i in 1 2 3 4 5; do
  out=$(curl -sS -m 90 "https://r.jina.ai/https://duckduckgo.com/html/?q=$Q" 2>/dev/null)
  if echo "$out" | grep -q "uddg="; then
    echo "$out" | python3 -c "
import re,sys,urllib.parse
t=sys.stdin.read()
seen=set(); c=0
for m in re.finditer(r'uddg=([^&\)\s]+)',t):
    u=urllib.parse.unquote(m.group(1))
    key=re.sub(r'^https?://(www\.)?','',u).split('?')[0].rstrip('/')
    if key in seen: continue
    seen.add(key); c+=1
    if c>int('$n'): break
    print(u)
"
    exit 0
  fi
  sleep $((i*22))
done
echo "[search failed: no results for $1]" >&2
