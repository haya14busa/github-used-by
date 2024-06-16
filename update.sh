#!/bin/bash
grep -v '^#' target.txt | xargs -I {} -P 3 sh -c "mkdir -p data/{} && ghtopdep --rows 100 --json https://github.com/{} > data/{}/data.json"
