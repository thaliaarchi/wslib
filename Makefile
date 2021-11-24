# Copyright (c) 2021 Andrew Archibald
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

BUILD = build
SED = gsed
ASSEMBLE = wsc

WSF = crypto/caesar.wsf crypto/luhn_test.wsf io/format_int_test.wsf \
	io/print_test.wsf math/collatz_test.wsf math/exp_test.wsf \
	types/array_test.wsf types/bits_test.wsf types/bool_test.wsf \
	types/matrix_test.wsf types/string_test.wsf
WS = $(patsubst %.wsf,$(BUILD)/%.ws,$(WSF))

.PHONY: all
all: $(WS)

$(BUILD)/%.ws: $(BUILD)/%.wsa
	$(ASSEMBLE) -f asm -t -o $@ $<

.PRECIOUS: $(BUILD)/%.wsa
$(BUILD)/%.wsa: %.wsf wsf.sed wsf-assemble
	@mkdir -p $(@D)
	./wsf-assemble $< $@

# Manually-enumerated dependencies
$(BUILD)/crypto/caesar.wsa: types/string.wsf
$(BUILD)/crypto/luhn.wsa:
$(BUILD)/crypto/luhn_test.wsa: crypto/luhn.wsf
$(BUILD)/io/format_int.wsa: math/exp.wsf math/math.wsf
$(BUILD)/io/format_int_test.wsa: io/format_int.wsf
$(BUILD)/io/print.wsa: io/format_int.wsf
$(BUILD)/io/print_test.wsa: io/print.wsf
$(BUILD)/math/collatz.wsa:
$(BUILD)/math/collatz_test.wsa: math/collatz.wsf
$(BUILD)/math/divmod.wsa:
$(BUILD)/math/exp.wsa:
$(BUILD)/math/exp_test.wsa: io/print.wsf
$(BUILD)/math/gcd.wsa: math/math.wsf
$(BUILD)/math/math.wsa:
$(BUILD)/misc/cowsay.wsa:
$(BUILD)/types/array.wsa:
$(BUILD)/types/array_test.wsa: types/array.wsf
$(BUILD)/types/bits.wsa: math/math.wsf
$(BUILD)/types/bits_test.wsa: types/bits.wsf
$(BUILD)/types/bool.wsa:
$(BUILD)/types/bool_test.wsa: types/bool.wsf
$(BUILD)/types/matrix.wsa: types/array.wsf
$(BUILD)/types/matrix_test.wsa: types/matrix.wsf
$(BUILD)/types/string.wsa:
$(BUILD)/types/string_test.wsa: types/string.wsf

.PHONY: clean
clean:
	@rm -rf $(BUILD)/
