#!/bin/bash
# Copyright (c) 2021 Andrew Archibald
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

run_test() {
  echo "Testing $1"
  prog="build/$(basename "${1%.wsa}")"
  want="${1%.wsa}.out"
  ./assemble.sh "$1" <(echo end) "${@:2}" &&
    wspace "$prog.ws" > "$prog.out" &&
    diff -q "$want" "$prog.out"
}

run_test math/bits_test.wsa math/bits.wsa math/math.wsa
run_test math/collatz_test.wsa math/collatz.wsa
run_test math/exp_test.wsa math/exp.wsa math/math.wsa io/print.wsa
run_test math/matrix_test.wsa math/matrix.wsa
run_test io/print_test.wsa io/print.wsa io/format_int.wsa math/exp.wsa math/math.wsa
run_test io/format_int_test.wsa io/format_int.wsa math/exp.wsa math/math.wsa
