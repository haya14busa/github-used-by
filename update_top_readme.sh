#!/bin/bash
OWNERS_FILE=$(mktemp)
ls data > ${OWNERS_FILE}

jq -s '[{owner: .[].owner, repo: .[].repo}] | unique_by(.owner, .repo)' $(find data | grep data.json) | gomplate -f tmpls/top.tmpl -d repos=stdin:///in.json -d owners="${OWNERS_FILE}" > README.md
