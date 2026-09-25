#!/bin/bash
# Usage: de-gn.sh "query" [n] [hl] [gl] [ceid]
# Google News RSS + decode Google redirect -> real publisher URLs.
q=$(python3 -c "import urllib.parse,sys;print(urllib.parse.quote(sys.argv[1]))" "$1")
n=${2:-12}; hl=${3:-de-DE}; gl=${4:-DE}; ceid=${5:-DE:de}
curl -sL -m 30 "https://news.google.com/rss/search?q=${q}&hl=${hl}&gl=${gl}&ceid=${ceid}" \
 | python3 -c "
import sys,re,html,json,subprocess,urllib.parse
UA='Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36'
def get(u,data=None):
    c=['curl','-sL','-m','25','-A',UA,'-H','Accept-Language: en-US,en;q=0.9']
    if data: c+=['-H','Content-Type: application/x-www-form-urlencoded;charset=UTF-8','--data-raw',data]
    return subprocess.run(c+[u],capture_output=True,text=True).stdout
def decode(gn):
    p=get(gn)
    sg=re.search(r'data-n-a-sg=\"([^\"]+)\"',p); ts=re.search(r'data-n-a-ts=\"([^\"]+)\"',p)
    if not (sg and ts): return ''
    aid=gn.split('/articles/')[1].split('?')[0]
    pl=json.dumps([[['Fbv4je',json.dumps(['garturlreq',[['X','X',['X','X'],None,None,1,1,'US:en',None,1,None,None,None,None,None,0,1],'X','X',1,[1,1,1],1,1,None,0,0,None,0],aid,int(ts.group(1)),sg.group(1)]),None,'generic']]])
    out=get('https://news.google.com/_/DotsSplashUi/data/batchexecute?rpcids=Fbv4je','f.req='+urllib.parse.quote(pl))
    m=re.search(r'\"(https?://[^\"\\\\]+)\"',out)
    return m.group(1).replace('\\\\u003d','=').replace('\\\\u0026','&') if m else ''
d=sys.stdin.read()
items=re.findall(r'<item>(.*?)</item>',d,re.S)
print('### QUERY:', '''$1''', '| results:', len(items))
for it in items[:int('$n')]:
    t=re.search(r'<title>(.*?)</title>',it,re.S)
    p=re.search(r'<pubDate>(.*?)</pubDate>',it,re.S)
    s=re.search(r'<source[^>]*>(.*?)</source>',it,re.S)
    u=re.search(r'<description>(.*?)</description>',it,re.S)
    gn=''
    if u:
        mm=re.findall(r'href=\"([^\"]+)\"',html.unescape(u.group(1)))
        if mm: gn=mm[0]
    real=decode(gn) if gn else ''
    print('-', html.unescape(t.group(1)) if t else '?')
    print('  src:', (html.unescape(s.group(1)) if s else '?'), '|', (p.group(1) if p else ''))
    print('  url:', real or ('UNRESOLVED '+gn[:60]))
"
