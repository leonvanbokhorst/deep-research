#!/bin/bash
# Usage: a3oa.sh "query" -> find OA works and PDF urls via OpenAlex
Q=$(python3 -c "import urllib.parse,sys;print(urllib.parse.quote(sys.argv[1]))" "$1")
curl -sL -m 30 "https://api.openalex.org/works?search=${Q}&per-page=6&mailto=research@example.org" | python3 -c "
import sys,json
d=json.load(sys.stdin)
for w in d.get('results',[]):
    b=w.get('best_oa_location') or {}
    print('-',w.get('display_name'),'|',w.get('publication_year'),'|',w.get('doi'))
    print('   venue:',(w.get('primary_location') or {}).get('source',{}).get('display_name') if (w.get('primary_location') or {}).get('source') else None)
    print('   pdf:',b.get('pdf_url'),'| land:',b.get('landing_page_url'))
"
