#!/bin/bash
echo "1=$1"
DATA_FILE=$1
MD_FILE="${DATA_FILE/data.json/README.md}"
MD_FILE="${MD_FILE/data/repo}"
MD_DIR="${MD_FILE/README.md/}"

mkdir -p "${MD_DIR}"
echo "Proceccing DATA_FILE=${DATA_FILE}"
gomplate -v
cat "${DATA_FILE}"
gomplate -f tmpls/repo.tmpl -d repo="${DATA_FILE}" # > "${MD_FILE}"
