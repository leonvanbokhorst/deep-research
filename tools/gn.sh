#!/bin/bash
# Usage: gn.sh "query" [n] [hl] [gl] [ceid]
# Google News RSS search with locale support. Prints title/source/date/url.
q=$(python3 -c "import urllib.parse,sys;print(urllib.parse.quote(sys.argv[1]))" "$1")
n=${2:-12}; hl=${3:-en-US}; gl=${4:-US}; ceid=${5:-US:en}
curl -sL -m 30 "https://news.google.com/rss/search?q=${q}&hl=${hl}&gl=${gl}&ceid=${ceid}" \
 | python3 -c "
import sys,re,html
d=sys.stdin.read()
items=re.findall(r'<item>(.*?)</item>',d,re.S)
print('### QUERY:', '''$1''', '|', '$hl', '| results:', len(items))
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
