# VERIFIED TOOLING RECIPE (tested 25 Sep 2026)

## BROKEN — do not waste turns
- `web_search` tool — returns "DeepSeek returned an unprocessable response body".
- `bash research/search.sh` — Brave returns a captcha/blocked page. Useless.
- Brave, Bing, Mojeek, DuckDuckGo (html + lite), Startpage, marginalia, searx.be,
  baresearch.org, search.inetol.net — ALL blocked/captcha/challenge from this IP.
  Do NOT retry search engines. There is no working general web search.

## WORKING
1. `web_fetch` on ordinary HTML pages — works for many sites.
2. `curl` with a browser User-Agent:
   `curl -sS -L --max-time 30 -A "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/121.0 Safari/537.36" URL -o /tmp/x.html`
3. SITE-INTERNAL SEARCH usually works where Google does not. Patterns:
   - `https://www.pst.no/?s=TERM`   (WordPress — WORKS)
   - `https://pet.dk/soegeside?query=TERM` (JS-rendered, returns no results — low value)
   - WordPress sites generally: `/?s=TERM`
   - Try `/en/?s=TERM`, `/nl/?s=TERM`, `/fr/?s=TERM` for language variants.
4. WEB ARCHIVE for Cloudflare-blocked sites:
   - Availability: `curl -sS "http://archive.org/wayback/available?url=EXAMPLE.com/path"`
   - CDX list: `curl -sS "http://web.archive.org/cdx/search/cdx?url=DOMAIN*&output=text&fl=original,timestamp,statuscode&collapse=urlkey&limit=200&filter=statuscode:200"`
   - Fetch snapshot: `curl -sS -L "http://web.archive.org/web/2025/https://EXAMPLE.com/path" -o /tmp/x.html`
     or `.../web/20250601000000/https://...`
5. PDFs:
   `curl -sS -L -A "Mozilla/5.0 ..." PDF_URL -o f.pdf && pdftotext -layout f.pdf f.txt`
   then `grep -n -i -E "drone|drönare|unmanned|UAS|AI|sabotage" f.txt`
   pdftotext is at /opt/homebrew/bin/pdftotext. web_fetch CANNOT read PDFs.

## KNOWN SITE STATUS (tested)
- `https://pet.dk/` — 200 OK via curl and web_fetch. WORKS.
- `https://www.pst.no/` — 200 OK. WORKS. (Note: bare `pst.no` redirects cross-origin; use `www.pst.no`.)
- `https://ocam.belgium.be/en` — 200 OK. `/fr` and `/nl` returned 404 on that path; explore the /en page nav for the language switch.
- `https://ocam.belgium.be/` via web_fetch — connection failed. Use curl.
- `https://sakerhetspolisen.se/` — HTTP 247 (Anubis/Cloudflare challenge). Use Wayback or site search on an archived copy.
- `https://www.dgsi.interieur.gouv.fr/` and `https://www.interieur.gouv.fr/` — 403 Cloudflare. Use Wayback CDX.
- `https://crisiscenter.be/nl` and `https://centredecrise.be/fr` — 200 OK (Belgian Crisis Centre, publishes OCAM analyses mirror).

## HARD RULES FOR THIS RESEARCH TASK
- NEVER invent a URL. If you did not fetch it and see the content, write "NOT VERIFIED".
- For every claim record: (a) what it says, (b) document date, (c) PRIMARY (agency/official doc)
  or SECONDARY (journalism), (d) exact URL.
- Distinguish OFFICIAL ASSESSMENT vs OFFICIAL WARNING ABOUT FUTURE vs JOURNALISTIC INFERENCE.
- Prefer primary docs; give short verbatim quotes in original language + English translation.
- Flag thin evidence and inter-institutional disagreement.
- No operational/attack guidance.
- Scratch files go in /Users/leonvanbokhorst/repos/deep-research/research/
