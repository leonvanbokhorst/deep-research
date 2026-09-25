#!/bin/bash
# Usage: ./s.sh "query"  -> decoded result URLs from DDG via r.jina.ai, with backoff
Q=$(python3 -c "import urllib.parse,sys;print(urllib.parse.quote_plus(sys.argv[1]))" "$1")
for i in 1 2 3 4 5 6; do
  OUT=$(curl -sS -m 90 "https://r.jina.ai/https://html.duckduckgo.com/html/?q=$Q" 2>/dev/null)
  if ! echo "$OUT" | grep -q 'RateLimitTriggeredError'; then
    echo "$OUT" | python3 -c "
import re,sys,urllib.parse
t=sys.stdin.read()
seen=set()
for m in re.finditer(r'uddg=([^&\)\s]+)',t):
    u=urllib.parse.unquote(m.group(1))
    if u in seen: continue
    seen.add(u); print(u)
"
    exit 0
  fi
  sleep $((i*6))
done
echo "RATELIMITED: $1" >&2
exit 1
