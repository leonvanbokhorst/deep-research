#!/bin/bash
# Usage: fetch2.sh NAME URL
# Fetch URL -> amplification/sources/NAME.txt (readable text). Tries direct, then Wayback, then r.jina.ai.
name="$1"; url="$2"
out="amplification/sources/${name}.txt"
UA="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"
tmp=$(mktemp -d)
# manual pipeline instead
attempt() {
  curl -sL -m 45 -A "$UA" "$1" -o "$tmp/raw" 2>/dev/null
  local sz=$(wc -c < "$tmp/raw" 2>/dev/null | tr -d ' ')
  [ -z "$sz" ] && sz=0
  if [ "$sz" -lt 800 ]; then return 1; fi
  if file -b "$tmp/raw" | grep -qi pdf; then
    pdftotext "$tmp/raw" "$out" 2>/dev/null && [ -s "$out" ] && return 0
    return 1
  fi
  python3 - "$out" "$tmp/raw" <<'PY'
import sys,re,html
out,src=sys.argv[1],sys.argv[2]
raw=open(src,encoding='utf-8',errors='ignore').read()
if re.search(r'(?i)enable javascript|checking your browser|cf-browser-verification|just a moment',raw[:4000]):
    sys.exit(3)
raw=re.sub(r'(?is)<(script|style|noscript|svg|nav|footer|header)[^>]*>.*?</\1>',' ',raw)
raw=re.sub(r'(?is)<!--.*?-->',' ',raw)
raw=re.sub(r'(?i)</(p|div|h[1-6]|li|tr|section|article)>','\n',raw)
raw=re.sub(r'(?i)<br[^>]*>','\n',raw)
txt=re.sub(r'<[^>]+>',' ',raw)
txt=html.unescape(txt)
txt=re.sub(r'[ \t\xa0]+',' ',txt)
txt=re.sub(r'\n\s*\n+','\n',txt)
lines=[l.strip() for l in txt.split('\n') if len(l.strip())>2]
open(out,'w').write('\n'.join(lines))
sys.exit(0 if len(lines)>5 else 3)
PY
  return $?
}

if attempt "$url"; then echo "OK direct $out"; exit 0; fi
wb="https://web.archive.org/web/2024/$url"
if attempt "$wb"; then echo "OK wayback $out"; exit 0; fi
if attempt "https://r.jina.ai/$url"; then echo "OK jina $out"; exit 0; fi
echo "FAIL $url"
exit 1
