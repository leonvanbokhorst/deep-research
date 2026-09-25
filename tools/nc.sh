#!/bin/bash
# compact news: one line per item
q=$(python3 -c "import urllib.parse,sys;print(urllib.parse.quote(sys.argv[1]))" "$1")
n=${2:-12}
curl -sL -m 30 "https://news.google.com/rss/search?q=${q}&hl=en-US&gl=US&ceid=US:en" \
 | python3 -c "
import sys,re,html
d=sys.stdin.read()
items=re.findall(r'<item>(.*?)</item>',d,re.S)
for it in items[:int('$n')]:
    t=re.search(r'<title>(.*?)</title>',it,re.S)
    p=re.search(r'<pubDate>(.*?)</pubDate>',it,re.S)
    s=re.search(r'<source[^>]*>(.*?)</source>',it,re.S)
    print('|',html.unescape(s.group(1)) if s else '?','|',(p.group(1)[:16] if p else ''),'|',html.unescape(t.group(1)) if t else '?')
"
