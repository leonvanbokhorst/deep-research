#!/bin/bash
# ============================================================================
# DISABLED — THIS SCRIPT IS UNRELIABLE. DO NOT USE.
#
# Confirmed during the Sept 2026 amplification study: this Bing-HTML scraper
# returns SPAM AND UNRELATED RESULTS for effectively every query (it was
# observed returning language-reference pages for a news query). It silently
# produces plausible-looking but wrong output, which is worse than failing.
#
# Working alternatives:
#   ./tools/news.sh "query" [n]        Google News RSS (reliable)
#   ./tools/news-nl.sh "query" [n]     Google News RSS, Dutch locale
#   ./tools/s.sh "query"               DuckDuckGo via r.jina.ai (real URLs)
#   ./tools/bn.sh "query" 8 en-US en   Bing News RSS (real publisher URLs)
#   ./tools/get.sh "URL" out.txt       fetch HTML and convert to text
#
# Original implementation retained in git history. web_search (the harness
# tool) was also broken throughout the Sept 2026 session.
# ============================================================================
echo "tools/web.sh is DISABLED and returns spam. Use tools/news.sh, tools/s.sh," >&2
echo "tools/bn.sh or tools/get.sh instead. See the header of this file." >&2
exit 1
