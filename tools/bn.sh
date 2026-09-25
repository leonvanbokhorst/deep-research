#!/bin/bash
# Usage: bn.sh "query" [n]
# Bing News RSS search -> extracts the REAL publisher URL from the apiclick redirect.
q=$(python3 -c "import urllib.parse,sys;print(urllib.parse.quote_plus(sys.argv[1]))" "$1")
n=${2:-12}; mkt=${3:-}; sl=${4:-}
extra=""
[ -n "$mkt" ] && extra="&mkt=${mkt}"
[ -n "$sl" ] && extra="${extra}&setlang=${sl}"
curl -sL -m 30 -A "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0 Safari/537.36" \
  "https://www.bing.com/news/search?q=${q}&format=RSS&count=30${extra}" \
 | python3 -c "
import sys,re,html,urllib.parse
d=sys.stdin.read()
items=re.findall(r'<item>(.*?)</item>',d,re.S)
print('### Q:', '''$1''', '| n=', len(items))
for it in items[:int('$n')]:
    t=re.search(r'<title>(.*?)</title>',it,re.S)
    l=re.search(r'<link>(.*?)</link>',it,re.S)
    p=re.search(r'<pubDate>(.*?)</pubDate>',it,re.S)
    u=re.search(r'<News:Source[^>]*>(.*?)</News:Source>',it,re.S)
    real=''
    if l:
        m=re.search(r'[?&]url=([^&]+)',html.unescape(l.group(1)))
        if m: real=urllib.parse.unquote(m.group(1))
        else: real=html.unescape(l.group(1))
    print('-',html.unescape(t.group(1)) if t else '?')
    print('  ',real)
    print('  ',p.group(1) if p else '')
"
