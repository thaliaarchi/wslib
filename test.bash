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
run_test math/collatz_test.wsf
run_test math/divmod_test.wsf
run_test math/exp_test.wsf
run_test types/array/array_test.wsf
run_test types/array/sort_test.wsf
run_test types/bool_test.wsf
run_test types/int/bits_test.wsf
run_test types/int/char_test.wsf
run_test types/int/print_test.wsf
run_test types/map_test.wsf
run_test types/matrix_test.wsf
run_test types/string/compare_test.wsf
run_test types/string/print_test.wsf
