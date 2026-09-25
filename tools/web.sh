#!/bin/bash
# Usage: web.sh "query" [n]
q=$(python3 -c "import urllib.parse,sys;print(urllib.parse.quote(sys.argv[1]))" "$1")
n=${2:-12}
curl -sL -m 30 -A "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36" \
  "https://www.bing.com/search?q=${q}&count=30&setlang=en&cc=US" -o /tmp/_bing.html
python3 - "$n" <<'PY'
import re,html,sys,subprocess
n=int(sys.argv[1])
d=open('/tmp/_bing.html',encoding='utf-8',errors='ignore').read()
blocks=re.findall(r'<li class="b_algo".*?(?=<li class="b_algo"|</ol>)',d,re.S)
cnt=0
for b in blocks:
    m=re.search(r'<h2[^>]*>\s*<a[^>]+href="([^"]+)"[^>]*>(.*?)</a>',b,re.S)
    if not m: continue
    url=html.unescape(m.group(1)); title=html.unescape(re.sub(r'<[^>]+>','',m.group(2))).strip()
    cite=re.search(r'<cite[^>]*>(.*?)</cite>',b,re.S)
    sn=re.search(r'<p class="b_lineclamp[^"]*"[^>]*>(.*?)</p>',b,re.S) or re.search(r'<p[^>]*>(.*?)</p>',b,re.S)
    snip=html.unescape(re.sub(r'<[^>]+>','',sn.group(1))).strip() if sn else ''
    if url.startswith('https://www.bing.com/ck/a'):
        r=subprocess.run(['curl','-sL','-m','12','-o','/dev/null','-w','%{url_effective}','-A','Mozilla/5.0','--max-redirs','5',url],capture_output=True,text=True)
        url=r.stdout.strip() or url
    print('-',title)
    print('  ',url)
    if snip: print('  ',snip[:280])
    cnt+=1
    if cnt>=n: break
print('### results:',cnt)
PY
