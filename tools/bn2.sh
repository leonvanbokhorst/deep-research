#!/bin/bash
# Usage: bn2.sh "query" [n] [freshness]  -> real URLs from Bing News RSS
q=$(python3 -c "import urllib.parse,sys;print(urllib.parse.quote(sys.argv[1]))" "$1")
n=${2:-15}; fr=${3:-}
extra=""; [ -n "$fr" ] && extra="&qft=interval%3d%22${fr}%22"
curl -sL -m 30 -A "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36" \
 "https://www.bing.com/news/search?q=${q}&format=rss&count=30${extra}" \
 | python3 -c "
import sys,re,html,urllib.parse
d=sys.stdin.read()
items=re.findall(r'<item>(.*?)</item>',d,re.S)
print('### ', '''$1''', ' results:', len(items))
for it in items[:int('$n')]:
    t=re.search(r'<title>(.*?)</title>',it,re.S)
    p=re.search(r'<pubDate>(.*?)</pubDate>',it,re.S)
    l=re.search(r'<link>(.*?)</link>',it,re.S)
    u=html.unescape(l.group(1)) if l else ''
    m=re.search(r'[?&]url=([^&]+)',u)
    real=urllib.parse.unquote(m.group(1)) if m else u
    print('-',(p.group(1)[:16] if p else ''),'|',html.unescape(t.group(1))[:100] if t else '?')
    print('  ',real)
"
