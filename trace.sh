#!/bin/bash
set -eu
SCRIPT_DIR=$(dirname "$(realpath -s "$0")")
cd "${SCRIPT_DIR}"

java -jar /usr/bin/openfasttrace.jar trace --show-origin .

mkdir -p ./target/analysis
java -jar /usr/bin/openfasttrace.jar trace --show-origin --output-format html . >./target/analysis/oft.html

