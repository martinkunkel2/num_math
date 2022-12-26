#!/bin/bash
set -eu
SCRIPT_DIR=$(dirname "$(realpath -s "$0")")

cd "${SCRIPT_DIR}"
cargo check
cargo test
cargo doc
tests_additional/run-tests.sh

