#!/bin/bash
# Usage: getoa.sh URL OUTFILE -- fetch with full browser headers then convert to text
url="$1"; out="$2"
curl -sL -m 45 --http1.1 -A "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36" \
 -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8' \
 -H 'Accept-Language: en-US,en;q=0.9' \
 -H 'sec-ch-ua: "Chromium";v="126", "Not)A;Brand";v="24"' -H 'sec-ch-ua-mobile: ?0' -H 'sec-ch-ua-platform: "macOS"' \
 -H 'sec-fetch-dest: document' -H 'sec-fetch-mode: navigate' -H 'sec-fetch-site: none' -H 'upgrade-insecure-requests: 1' \
 "$url" -o /tmp/_oa.html
python3 - "$out" <<'PY'
import sys,re,html
raw=open('/tmp/_oa.html',encoding='utf-8',errors='ignore').read()
raw=re.sub(r'(?is)<(script|style|noscript|svg|nav|footer|header)[^>]*>.*?</\1>',' ',raw)
raw=re.sub(r'(?is)<!--.*?-->',' ',raw)
raw=re.sub(r'(?i)</(p|div|h[1-6]|li|tr|section|article)>','\n',raw)
raw=re.sub(r'(?i)<br[^>]*>','\n',raw)
txt=re.sub(r'<[^>]+>',' ',raw); txt=html.unescape(txt)
txt=re.sub(r'[ \t\xa0]+',' ',txt); txt=re.sub(r'\n\s*\n+','\n',txt)
lines=[l.strip() for l in txt.split('\n') if len(l.strip())>2]
open(sys.argv[1],'w').write('\n'.join(lines))
print('wrote',sys.argv[1],len(lines),'lines')
PY
