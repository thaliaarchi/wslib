#!/bin/sh -e
# Copyright (c) 2021 Andrew Archibald
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

echo 'Testing math/bits.wsa'
./assemble.sh math/bits_test.wsa math/bits.wsa math/math.wsa
wspace prog.ws > prog.out
diff -q math/bits_test.out prog.out || :

echo 'Testing math/collatz.wsa'
./assemble.sh math/collatz_test.wsa math/collatz.wsa
wspace prog.ws > prog.out
diff -q math/collatz_test.out prog.out || :

echo 'Testing math/exp.wsa'
./assemble.sh math/exp_test.wsa math/exp.wsa math/math.wsa io/print.wsa
wspace prog.ws > prog.out
diff -q math/exp_test.out prog.out || :

echo 'Testing io/print.wsa'
./assemble.sh io/print_test.wsa io/print.wsa math/exp.wsa math/math.wsa
wspace prog.ws > prog.out
diff -q io/print_test.out prog.out || :
