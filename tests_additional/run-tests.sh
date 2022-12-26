#!/bin/bash
set -eu
SCRIPT_DIR=$(dirname "$(realpath -s "$0")")

# test that an example program can be created without link to std
# [itest->dsn~no_std~1]
# this fails in case there is already a dependency to std
# compiler error would indicate a double defintion of `panic_impl`
cd "${SCRIPT_DIR}/test_no_std"
cargo rustc -- -C link-arg=-nostartfiles

# test that there are no dependencies
# [itest->dsn~no_deps~1]
# there shall be only one line in the cargo tree output (the library name itself)
cd "${SCRIPT_DIR}/.."
test "$(cargo tree -e no-dev | wc -l)" = 1
