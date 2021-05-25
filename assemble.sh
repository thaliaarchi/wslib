#!/bin/sh -e
# Copyright (c) 2021 Andrew Archibald
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

gsed -Ef wsa.sed "$@" > prog.wsa
wsc -f asm -t -o prog.ws prog.wsa
nebula ir prog.ws > prog.ir 2>&1
rm prog.wsa
