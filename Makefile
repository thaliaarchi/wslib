# Copyright (c) 2021 Andrew Archibald
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

BUILD = build
SED = gsed
ASSEMBLE = wsc
TARGETS = crypto/caesar.ws crypto/luhn_test.ws io/format_int_test.ws \
	io/print_test.ws math/bits_test.ws math/collatz_test.ws \
	math/exp_test.ws math/matrix_test.ws

.PHONY: all
all: $(addprefix $(BUILD)/,$(TARGETS))

$(BUILD)/%.ws: $(BUILD)/%.wsa
	$(ASSEMBLE) -f asm -t -o $@ $<

$(BUILD)/%.wsa: wsf.sed %.wsf
	@mkdir -p $(dir $@)
	$(SED) -Ef $^ > $@

$(BUILD)/crypto/caesar.wsa: io/print.wsf io/format_int.wsf io/read.wsf math/exp.wsf math/math.wsf
$(BUILD)/crypto/luhn_test.wsa: crypto/luhn.wsf
$(BUILD)/io/format_int_test.wsa: io/format_int.wsf math/exp.wsf math/math.wsf
$(BUILD)/io/print_test.wsa: io/print.wsf io/format_int.wsf math/exp.wsf math/math.wsf
$(BUILD)/math/bits_test.wsa: math/bits.wsf math/math.wsf
$(BUILD)/math/collatz_test.wsa: math/collatz.wsf
$(BUILD)/math/exp_test.wsa: math/exp.wsf math/math.wsf io/print.wsf io/format_int.wsf
$(BUILD)/math/matrix_test.wsa: math/matrix.wsf

.PHONY: clean
clean:
	@rm -rf $(BUILD)/
