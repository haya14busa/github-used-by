#!/bin/bash
export OWNER=$1

jq -s '[.[].repos] | add | unique_by(.url) | sort_by(.stars) | reverse' \
  $(find "data/${OWNER}" | grep data.json) |
  jq '.[:500]' |
  gomplate -f tmpls/owner.tmpl -d repos=stdin:///in.json > "repo/${OWNER}/README.md"
