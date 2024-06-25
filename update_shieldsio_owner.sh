#!/bin/bash
OWNER=$1
SHIELDS_IO_FILE="data/${OWNER}/shieldsio.json"

jq -s '[.[].count.total] | add' $(find "data/${OWNER}" | grep data.json) |
  jq '{schemaVersion: 1, label: "Used-by", message: ((. | tostring) + " repos"), namedLogo: "github", color: "brightgreen"}' > "${SHIELDS_IO_FILE}"

