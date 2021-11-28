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
	types/char/print_test.wsf types/int/bits_test.wsf \
	types/int/print_test.wsf types/map_test.wsf types/matrix_test.wsf \
	types/string/compare_test.wsf types/string/print_test.wsf
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
CRYPTO = crypto/module.wsf crypto/caesar.wsf crypto/luhn.wsf
MATH = math/module.wsf math/collatz.wsf math/divmod.wsf math/exp.wsf math/gcd.wsf math/math.wsf
ARRAY = types/array/module.wsf types/array/array.wsf types/array/sort.wsf
BOOL = types/bool.wsf
CHAR = types/char/module.wsf types/char/print.wsf types/char/unicode.wsf
INT = types/int/module.wsf types/int/bits.wsf types/int/int.wsf types/int/print.wsf types/int/read.wsf
MAP = types/map.wsf
MATRIX = types/matrix.wsf
STRING = types/string/module.wsf types/string/compare.wsf types/string/print.wsf types/string/read.wsf types/string/store.wsf
$(BUILD)/crypto/caesar.wsa: $(CRYPTO) $(STRING)
$(BUILD)/crypto/luhn.wsa: $(CRYPTO)
$(BUILD)/crypto/luhn_test.wsa: $(CRYPTO)
$(BUILD)/math/collatz.wsa: $(MATH)
$(BUILD)/math/collatz_test.wsa: $(MATH)
$(BUILD)/math/divmod.wsa: $(MATH)
$(BUILD)/math/divmod_test.wsa: $(MATH)
$(BUILD)/math/exp.wsa: $(MATH)
$(BUILD)/math/exp_test.wsa: $(MATH) $(STRING)
$(BUILD)/math/gcd.wsa: $(MATH)
$(BUILD)/math/math.wsa: $(MATH)
$(BUILD)/types/array/array.wsa: $(ARRAY) $(BOOL)
$(BUILD)/types/array/array_test.wsa: $(ARRAY)
$(BUILD)/types/array/sort.wsa: $(ARRAY)
$(BUILD)/types/array/sort_test.wsa: $(ARRAY)
$(BUILD)/types/bool.wsa: $(BOOL)
$(BUILD)/types/bool_test.wsa: $(BOOL)
$(BUILD)/types/char/print.wsa: $(CHAR)
$(BUILD)/types/char/print_test.wsa: $(CHAR)
$(BUILD)/types/char/unicode.wsa: $(CHAR)
$(BUILD)/types/int/bits.wsa: $(INT) $(MATH)
$(BUILD)/types/int/bits_test.wsa: $(INT)
$(BUILD)/types/int/int.wsa: $(INT)
$(BUILD)/types/int/print.wsa: $(INT) $(MATH)
$(BUILD)/types/int/print_test.wsa: $(INT)
$(BUILD)/types/int/read.wsa: $(INT)
$(BUILD)/types/map.wsa: $(MAP) $(BOOL)
$(BUILD)/types/map_test.wsa: $(MAP)
$(BUILD)/types/matrix.wsa: $(MATRIX) $(ARRAY) $(STRING)
$(BUILD)/types/matrix_test.wsa: $(MATRIX) $(ARRAY)
$(BUILD)/types/string/compare.wsa: $(STRING) $(BOOL)
$(BUILD)/types/string/compare_test.wsa: $(STRING) $(MATH)
$(BUILD)/types/string/print.wsa: $(STRING) $(CHAR) $(INT)
$(BUILD)/types/string/print_test.wsa: $(STRING)
$(BUILD)/types/string/read.wsa: $(STRING)
$(BUILD)/types/string/store.wsa: $(STRING)

.PHONY: clean
clean:
	@rm -rf $(BUILD)/
