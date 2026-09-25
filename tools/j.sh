#!/bin/bash
# Usage: ./j.sh "url"  -> jina.ai rendered markdown with 429 backoff
URL="$1"
for i in 1 2 3 4 5 6 7 8; do
  OUT=$(curl -sS -m 120 "https://r.jina.ai/$URL" 2>/dev/null)
  if ! echo "$OUT" | head -c 200 | grep -q 'RateLimitTriggeredError'; then
    echo "$OUT"; exit 0
  fi
  sleep $((i*5))
done
echo "RATELIMITED: $URL" >&2
exit 1
