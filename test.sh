#!/bin/sh -e
# Copyright (c) 2021 Andrew Archibald
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

./assemble.sh math/bits_test.wsa math/bits.wsa
wspace prog.ws > prog.out
diff math/bits_test.out prog.out
