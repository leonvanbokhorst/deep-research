#!/bin/bash
# Usage: bs.sh "query" [n] -- Bing web search via RSS, real URLs
q=$(python3 -c "import urllib.parse,sys;print(urllib.parse.quote_plus(sys.argv[1]))" "$1")
n=${2:-12}
curl -sL -m 30 -A "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 Chrome/126 Safari/537.36" \
 "https://www.bing.com/search?q=${q}&format=rss&count=30&mkt=en-US&setlang=en-US&cc=US" \
 | python3 -c "
import sys,re,html
d=sys.stdin.read()
items=re.findall(r'<item>(.*?)</item>',d,re.S)
for it in items[:int('$n')]:
    t=re.search(r'<title>(.*?)</title>',it,re.S); l=re.search(r'<link>(.*?)</link>',it,re.S)
    de=re.search(r'<description>(.*?)</description>',it,re.S)
    print('-',html.unescape(t.group(1)) if t else '?')
    print('  ',html.unescape(l.group(1)) if l else '?')
    if de: print('  ',html.unescape(re.sub('<[^>]+>','',de.group(1)))[:200])
"
