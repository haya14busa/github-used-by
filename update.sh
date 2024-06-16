#!/bin/bash
grep -v '^#' target.txt | xargs -I {} -P 5 sh -c "mkdir -p data/{} && ghtopdep --rows 100 --json https://github.com/{} | jq . > data/{}/data.json"
