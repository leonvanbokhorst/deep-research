#!/bin/bash
# Usage: news.sh "query" [n]
q=$(python3 -c "import urllib.parse,sys;print(urllib.parse.quote(sys.argv[1]))" "$1")
n=${2:-20}
curl -sL -m 30 "https://news.google.com/rss/search?q=${q}&hl=en-US&gl=US&ceid=US:en" \
 | python3 -c "
import sys,re,html
d=sys.stdin.read()
items=re.findall(r'<item>(.*?)</item>',d,re.S)
for it in items[:int('$n')]:
    t=re.search(r'<title>(.*?)</title>',it,re.S)
    p=re.search(r'<pubDate>(.*?)</pubDate>',it,re.S)
    s=re.search(r'<source[^>]*>(.*?)</source>',it,re.S)
    u=re.search(r'<description>(.*?)</description>',it,re.S)
    real=''
    if u:
        m=re.findall(r'href=\"([^\"]+)\"',html.unescape(u.group(1)))
        if m: real=m[0]
    print('-',html.unescape(t.group(1)) if t else '?')
    print('  src:',html.unescape(s.group(1)) if s else '?', '|', p.group(1) if p else '')
    print('  url:',real)
"
