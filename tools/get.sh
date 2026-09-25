#!/bin/bash
# Usage: get.sh URL OUTFILE  -- fetch HTML and convert to readable text
url="$1"; out="$2"
UA="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36"
curl -sL -m 45 -A "$UA" "$url" -o /tmp/_page.html
python3 - "$out" <<'PY'
import sys,re,html
raw=open('/tmp/_page.html',encoding='utf-8',errors='ignore').read()
raw=re.sub(r'(?is)<(script|style|noscript|svg|nav|footer|header)[^>]*>.*?</\1>',' ',raw)
raw=re.sub(r'(?is)<!--.*?-->',' ',raw)
raw=re.sub(r'(?i)</(p|div|h[1-6]|li|tr|section|article)>','\n',raw)
raw=re.sub(r'(?i)<br[^>]*>','\n',raw)
txt=re.sub(r'<[^>]+>',' ',raw)
txt=html.unescape(txt)
txt=re.sub(r'[ \t\xa0]+',' ',txt)
txt=re.sub(r'\n\s*\n+','\n',txt)
lines=[l.strip() for l in txt.split('\n') if len(l.strip())>2]
open(sys.argv[1],'w').write('\n'.join(lines))
print('wrote',sys.argv[1],len(lines),'lines')
PY
