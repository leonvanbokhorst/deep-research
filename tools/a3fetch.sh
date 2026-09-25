#!/bin/bash
# Usage: a3fetch.sh NAME URL  -> amplification/research/a3-NAME.txt
name="$1"; url="$2"
out="amplification/research/a3-${name}.txt"
UA="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"
tmp=$(mktemp)
try() {
  curl -sL -m 40 -A "$UA" "$1" -o "$tmp" 2>/dev/null
  sz=$(wc -c < "$tmp" 2>/dev/null | tr -d ' '); [ -z "$sz" ] && sz=0
  [ "$sz" -lt 500 ] && return 1
  if file -b "$tmp" | grep -qi pdf; then
    pdftotext -layout "$tmp" "$out" 2>/dev/null && [ -s "$out" ] && return 0
    return 1
  fi
  python3 - "$out" "$tmp" <<'PY'
import sys,re,html
out,src=sys.argv[1],sys.argv[2]
raw=open(src,encoding='utf-8',errors='ignore').read()
if re.search(r'(?i)just a moment|enable javascript and cookies|checking your browser|cf-browser-verification|performing security verification',raw[:6000]):
    sys.exit(3)
raw=re.sub(r'(?is)<(script|style|noscript|svg|nav|footer|header)[^>]*>.*?</\1>',' ',raw)
raw=re.sub(r'(?is)<!--.*?-->',' ',raw)
raw=re.sub(r'(?i)</(p|div|h[1-6]|li|tr|section|article)>','\n',raw)
raw=re.sub(r'(?i)<br[^>]*>','\n',raw)
txt=re.sub(r'<[^>]+>',' ',raw); txt=html.unescape(txt)
txt=re.sub(r'[ \t\xa0]+',' ',txt); txt=re.sub(r'\n\s*\n+','\n',txt)
lines=[l.strip() for l in txt.split('\n') if len(l.strip())>2]
open(out,'w').write('\n'.join(lines))
sys.exit(0 if len(lines)>8 else 3)
PY
  return $?
}
if try "$url"; then echo "OK direct $out"; exit 0; fi
if try "https://r.jina.ai/$url"; then echo "OK jina $out"; exit 0; fi
echo "FAIL $url" >&2
exit 1
