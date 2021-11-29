#!/bin/sh
# Copyright (c) 2021 Andrew Archibald
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

list_module() {
  echo "Module \`$1\`"
  echo
  find "$1" -name '*.wsf' ! -name '*_test.wsf' \
    -exec gsed -En 's/^([A-Za-z][A-Za-z0-9_-]*):/- `\1`/p' {} \; | sort
  echo
}

list_module crypto
list_module math
list_module types
list_module vm
