#!/bin/sh
# Copyright (c) 2021 Andrew Archibald
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

list_package() {
  echo "Package $1"
  echo
  find "$1" -name '*.wsa' ! -name '*_test.wsa' \
    -exec grep '^[A-Za-z][A-Za-z0-9_]*:' {} \; | sort | sed -E 's/(.+):/  - `\1`/'
  echo
}

list_package io
list_package math
list_package misc
