#!/bin/bash
# Sequential multi-query search; writes one file per query.
cd /Users/leonvanbokhorst/repos/deep-research/tools
outdir=/tmp/jddg_out
mkdir -p $outdir
i=0
while IFS= read -r q; do
  [ -z "$q" ] && continue
  i=$((i+1))
  f="$outdir/q$i.txt"
  echo "=== QUERY $i: $q" > "$f"
  ./jddg.sh "$q" 12 >> "$f" 2>&1
  echo "--- done q$i"
  sleep 6
done
echo "ALL_DONE"
