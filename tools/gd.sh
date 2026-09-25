#!/bin/bash
# Usage: gd.sh "query" [n] [startdatetime]
Q=$(python3 -c "import urllib.parse,sys;print(urllib.parse.quote(sys.argv[1]))" "$1")
N=${2:-15}; S=${3:-}
EXTRA=""
[ -n "$S" ] && EXTRA="&startdatetime=${S}"
sleep 5.2
curl -sL -m 45 "https://api.gdeltproject.org/api/v2/doc/doc?query=${Q}&mode=artlist&maxrecords=${N}&format=json&sort=datedesc${EXTRA}" \
 | python3 -c "
import sys,json
try:
    d=json.load(sys.stdin)
except Exception as e:
    print('ERR',e); sys.exit()
for a in d.get('articles',[]):
    print(a.get('seendate','')[:8],'|',a.get('domain'),'|',a.get('title','')[:110])
    print('   ',a.get('url'))
"
