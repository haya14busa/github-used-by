#!/bin/bash
DATA_FILE=$1
SHIELDS_IO_FILE="${DATA_FILE/data.json/shieldsio.json}"
cat $DATA_FILE | jq '{schemaVersion: 1, label: "Used-by", message: .count.total, namedLogo: "github", color: "brightgreen"}' > $SHIELDS_IO_FILE
