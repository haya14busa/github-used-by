#!/bin/bash
jq -s '[{owner: .[].owner, repo: .[].repo}] | unique_by(.owner, .repo)' $(find data | grep data.json) | gomplate -f tmpls/top.tmpl -d repos=stdin:///in.json > README.md
