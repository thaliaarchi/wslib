# Copyright (c) 2021 Andrew Archibald
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

BUILD = build
ASSEMBLE = ./assemble.sh
TARGETS = caesar.ws luhn_test.ws format_int_test.ws print_test.ws \
  bits_test.ws collatz_test.ws exp_test.ws matrix_test.ws

.PHONY: all
all: $(addprefix $(BUILD)/,$(TARGETS))

%.ws:
	$(ASSEMBLE) $^

$(BUILD)/caesar.ws: crypto/caesar.wsf io/print.wsf io/format_int.wsf io/read.wsf math/exp.wsf math/math.wsf
$(BUILD)/luhn_test.ws: crypto/luhn_test.wsf crypto/luhn.wsf
$(BUILD)/format_int_test.ws: io/format_int_test.wsf io/format_int.wsf math/exp.wsf math/math.wsf
$(BUILD)/print_test.ws: io/print_test.wsf io/print.wsf io/format_int.wsf math/exp.wsf math/math.wsf
$(BUILD)/bits_test.ws: math/bits_test.wsf math/bits.wsf math/math.wsf
$(BUILD)/collatz_test.ws: math/collatz_test.wsf math/collatz.wsf
$(BUILD)/exp_test.ws: math/exp_test.wsf math/exp.wsf math/math.wsf io/print.wsf io/format_int.wsf
$(BUILD)/matrix_test.ws: math/matrix_test.wsf math/matrix.wsf

.PHONY: clean
clean:
	@rm -rf $(BUILD)/
