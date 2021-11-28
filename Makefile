# Copyright (c) 2021 Andrew Archibald
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

BUILD = build
SED = gsed
ASSEMBLE = wsc

WSF = crypto/caesar.wsf crypto/luhn_test.wsf  math/collatz_test.wsf \
	math/divmod_test.wsf math/exp_test.wsf types/array/array_test.wsf \
	types/array/sort_test.wsf types/bool_test.wsf \
	types/int/bits_test.wsf types/int/char_test.wsf \
	types/int/print_test.wsf types/map_test.wsf types/matrix_test.wsf \
	types/string/io_test.wsf types/string/printf_test.wsf
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
$(BUILD)/crypto/caesar.wsa: types/string/io.wsf
$(BUILD)/crypto/luhn.wsa:
$(BUILD)/crypto/luhn_test.wsa: crypto/luhn.wsf
$(BUILD)/math/collatz.wsa:
$(BUILD)/math/collatz_test.wsa: math/collatz.wsf
$(BUILD)/math/divmod.wsa:
$(BUILD)/math/divmod_test.wsa: math/divmod_test.wsf
$(BUILD)/math/exp.wsa:
$(BUILD)/math/exp_test.wsa: types/string/printf.wsf
$(BUILD)/math/gcd.wsa: math/math.wsf
$(BUILD)/math/math.wsa:
$(BUILD)/misc/cowsay.wsa:
$(BUILD)/types/array/array.wsa:
$(BUILD)/types/array/array_test.wsa: types/array/array.wsf
$(BUILD)/types/array/sort.wsa:
$(BUILD)/types/array/sort_test.wsa: types/array/sort.wsf types/array/array.wsf
$(BUILD)/types/bool.wsa:
$(BUILD)/types/bool_test.wsa: types/bool.wsf
$(BUILD)/types/int/bits.wsa: math/math.wsf
$(BUILD)/types/int/bits_test.wsa: types/int/bits.wsf
$(BUILD)/types/int/char.wsa:
$(BUILD)/types/int/char_test.wsa: types/int/char.wsf
$(BUILD)/types/int/print.wsa: math/exp.wsf math/math.wsf
$(BUILD)/types/int/print_test.wsa: types/int/print.wsf
$(BUILD)/types/int/read.wsa:
$(BUILD)/types/map.wsa: types/bool.wsf
$(BUILD)/types/map_test.wsa: types/map.wsf
$(BUILD)/types/matrix.wsa: types/array/array.wsf
$(BUILD)/types/matrix_test.wsa: types/matrix.wsf types/array/array.wsf
$(BUILD)/types/string/compare.wsa: types/bool.wsf
$(BUILD)/types/string/io.wsa:
$(BUILD)/types/string/io_test.wsa: types/string/io.wsf
$(BUILD)/types/string/printf.wsa: types/int/char.wsf
$(BUILD)/types/string/printf_test.wsa: types/string/printf.wsf

.PHONY: clean
clean:
	@rm -rf $(BUILD)/
