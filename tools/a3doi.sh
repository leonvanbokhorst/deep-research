#!/bin/bash
# Usage: a3doi.sh DOI -> OA locations via unpaywall+openalex
D="$1"
curl -sL -m 30 "https://api.openalex.org/works/doi:${D}?mailto=research@example.org" | python3 -c "
import sys,json
d=json.load(sys.stdin)
print(d.get('display_name'),'|',d.get('publication_date'))
print('abstract_inverted present:', bool(d.get('abstract_inverted_index')))
for l in d.get('locations',[]):
    print('  ',l.get('is_oa'),l.get('pdf_url'),'|',l.get('landing_page_url'))
"
