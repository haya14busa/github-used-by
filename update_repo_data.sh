#!/bin/bash
REPO=$1

mkdir -p "data/${REPO}"

OUTPUT=$(ghtopdep --rows 100 --json "https://github.com/${REPO}")
GHTOPDEP_STATUS=$?

if [ $GHTOPDEP_STATUS -eq 0 ]; then
  echo ${OUTPUT} | jq . > "data/${REPO}/data.json"
else
  echo "Failed to fetch data for repository: ${REPO}"
  exit 1
fi
