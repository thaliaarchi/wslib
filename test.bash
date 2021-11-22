#!/bin/bash
# Copyright (c) 2021 Andrew Archibald
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

run_test() {
  echo "Testing $1"
  prog="build/${1%.wsf}"
  in="${1%.wsf}.in"
  out="${1%.wsf}.out"
  if [ -f "$in" ]; then
    wspace "$prog.ws" < "$in" > "$prog.out"
  else
    wspace "$prog.ws" > "$prog.out"
  fi &&
  diff "$out" "$prog.out"
}

make -k
run_test crypto/caesar.wsf
run_test crypto/luhn_test.wsf
run_test io/format_int_test.wsf
run_test io/print_test.wsf
run_test math/bits_test.wsf
run_test math/collatz_test.wsf
run_test math/exp_test.wsf
run_test math/logical_test.wsf
run_test math/matrix_test.wsf
