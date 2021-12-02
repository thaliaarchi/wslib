#!/bin/sh
# Copyright (c) 2021 Andrew Archibald
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

list_module() {
  echo
  echo "Module \`$1\`"
  echo
  find "$1" -name '*.wsf' ! -name '*_test.wsf' \
    -exec gsed -En 's/^([A-Za-z][A-Za-z0-9_-]*):/- `\1`/p' {} \; | sort -V
}

echo '# Modules'
list_module array
list_module bool
list_module char
list_module crypto
list_module hash
list_module int
list_module map
list_module math
list_module matrix
list_module mem
list_module string
list_module vm
