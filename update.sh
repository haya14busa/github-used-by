#!/bin/bash
grep -v '^#' target.txt | xargs -I {} -P 5 sh -c './update_repo_data.sh {}'
