#!/bin/bash
# Usage: wsearch.sh "query" [n] -> real URLs from Bing (decoded)
q=$(python3 -c "import urllib.parse,sys;print(urllib.parse.quote(sys.argv[1]))" "$1")
n=${2:-12}
curl -sL -m 35 -A "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36" \
  "https://www.bing.com/search?q=${q}&count=30&setlang=en&cc=US" -o /tmp/_bing.html
python3 - "$n" <<'PY'
import re,html,sys,base64
n=int(sys.argv[1]); d=open('/tmp/_bing.html',encoding='utf-8',errors='ignore').read()
blocks=re.findall(r'<li class="b_algo".*?(?=<li class="b_algo"|</ol>)',d,re.S)
c=0
for b in blocks:
    h=re.search(r'<h2[^>]*>.*?<a[^>]*href="([^"]+)"[^>]*>(.*?)</a>',b,re.S)
    if not h: continue
    u=html.unescape(h.group(1)); t=re.sub(r'<[^>]+>','',h.group(2)); t=html.unescape(t)
    m=re.search(r'[?&]u=a1([^&]+)',u)
    if m:
        s=m.group(1); s+='='*(-len(s)%4)
        try: u=base64.urlsafe_b64decode(s).decode('utf-8','ignore')
        except Exception: pass
    if 'bing.com' in u: continue
    print('-',t.strip()); print('  ',u)
    c+=1
    if c>=n: break
PY
