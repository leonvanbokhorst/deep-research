#!/bin/bash
# Serialized DuckDuckGo-via-Jina search with retry/backoff.
# Usage: jddg.sh "query" [maxresults]
Q=$(python3 -c "import urllib.parse,sys;print(urllib.parse.quote_plus(sys.argv[1]))" "$1")
N=${2:-15}
for attempt in 1 2 3 4 5 6; do
  out=$(curl -sS -m 90 "https://r.jina.ai/https://html.duckduckgo.com/html/?q=$Q" 2>/dev/null)
  if printf '%s' "$out" | grep -q "uddg="; then
    printf '%s' "$out" | python3 -c "
import re,sys,urllib.parse
t=sys.stdin.read()
seen=set()
for m in re.finditer(r'uddg=([^&\)\s]+)',t):
    u=urllib.parse.unquote(m.group(1))
    if u in seen: continue
    seen.add(u)
    print(u)
    if len(seen)>=int('$N'): break
"
    exit 0
  fi
  sleep $((attempt*4))
done
echo "SEARCH_FAILED: $1" >&2
exit 1
