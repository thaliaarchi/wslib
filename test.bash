#!/bin/bash
# Copyright (c) 2021 Andrew Archibald
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

run_test() {
  local base="${1%.wsf}"
  echo "Testing $base"
  prog="build/$base"
  in="$base.in"
  out="$base.out"
  if [ -f "$in" ]; then
    wspace "$prog.ws" < "$in" > "$prog.out"
  else
    wspace "$prog.ws" > "$prog.out"
  fi &&
  diff "$out" "$prog.out"
}

make -k
find . -type f -name '*_test.wsf' |
while read -r test; do
  run_test "${test#./}"
done
run_test crypto/caesar.wsf
