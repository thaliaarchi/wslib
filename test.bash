#!/bin/bash
# Copyright (c) 2021 Andrew Archibald
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

run_test() {
  echo "Testing $1"
  prog="build/$(basename "${1%.wsf}")"
  want="${1%.wsf}.out"
  ./assemble.sh "$1" <(echo end) "${@:2}" &&
    wspace "$prog.ws" > "$prog.out" &&
    diff -q "$want" "$prog.out"
}

# run_test crypto/rot.wsf io/print.wsf io/format_int.wsf io/read.wsf math/exp.wsf math/math.wsf
run_test io/format_int_test.wsf io/format_int.wsf math/exp.wsf math/math.wsf
run_test io/print_test.wsf io/print.wsf io/format_int.wsf math/exp.wsf math/math.wsf
run_test math/bits_test.wsf math/bits.wsf math/math.wsf
run_test math/collatz_test.wsf math/collatz.wsf
run_test math/exp_test.wsf math/exp.wsf math/math.wsf io/print.wsf io/format_int.wsf
run_test math/matrix_test.wsf math/matrix.wsf
