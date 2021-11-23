# Copyright (c) 2021 Andrew Archibald
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

BUILD = build
SED = gsed
ASSEMBLE = wsc

WSF = crypto/caesar.wsf crypto/luhn_test.wsf io/format_int_test.wsf \
	io/print_test.wsf math/bits_test.wsf math/collatz_test.wsf \
	math/exp_test.wsf math/logical_test.wsf math/matrix_test.wsf
WS = $(patsubst %.wsf,$(BUILD)/%.ws,$(WSF))

.PHONY: all
all: $(WS)

$(BUILD)/%.ws: $(BUILD)/%.wsa
	$(ASSEMBLE) -f asm -t -o $@ $<

.PRECIOUS: $(BUILD)/%.wsa
$(BUILD)/%.wsa: %.wsf wsf.sed wsf-assemble
	@mkdir -p $(@D)
	./wsf-assemble $< $@


$(BUILD)/array/array.wsa:
$(BUILD)/crypto/caesar.wsa: io/read.wsf io/print.wsf
$(BUILD)/crypto/luhn.wsa:
$(BUILD)/crypto/luhn_test.wsa: crypto/luhn.wsf
$(BUILD)/io/format_int.wsa: math/exp.wsf math/math.wsf
$(BUILD)/io/format_int_test.wsa: io/format_int.wsf
$(BUILD)/io/print.wsa: io/format_int.wsf
$(BUILD)/io/print_test.wsa: io/print.wsf
$(BUILD)/io/read.wsa:
$(BUILD)/math/bits.wsa: math/math.wsf
$(BUILD)/math/bits_test.wsa: math/bits.wsf
$(BUILD)/math/collatz.wsa:
$(BUILD)/math/collatz_test.wsa: math/collatz.wsf
$(BUILD)/math/divmod.wsa:
$(BUILD)/math/exp.wsa:
$(BUILD)/math/exp_test.wsa: io/print.wsf
$(BUILD)/math/gcd.wsa: math/math.wsf
$(BUILD)/math/logical.wsa:
$(BUILD)/math/logical_test.wsa: math/logical.wsf
$(BUILD)/math/math.wsa:
$(BUILD)/math/matrix.wsa: array/array.wsf
$(BUILD)/math/matrix_test.wsa: math/matrix.wsf
$(BUILD)/misc/cowsay.wsa:

.PHONY: clean
clean:
	@rm -rf $(BUILD)/
