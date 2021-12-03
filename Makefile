# Copyright (c) 2021 Andrew Archibald
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

BUILD = build
SED = gsed
ASSEMBLE = wsc

TESTS = $(patsubst ./%,%,$(shell find . -type f -name '*_test.wsf'))
WSF = $(TESTS) crypto/caesar.wsf
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
ARRAY = array/module.wsf array/array.wsf array/sort.wsf
BOOL = bool/module.wsf bool/bool.wsf
CHAR = char/module.wsf char/io.wsf char/unicode.wsf
CRYPTO = crypto/module.wsf crypto/caesar.wsf
HASH = hash/module.wsf hash/cusip.wsf hash/luhn.wsf
INT = int/module.wsf int/bits.wsf int/int.wsf int/print.wsf int/read.wsf
MAP = map/module.wsf map/map.wsf
MATH = math/module.wsf math/collatz.wsf math/divmod.wsf math/exp.wsf math/gcd.wsf math/math.wsf
MATRIX = matrix/module.wsf matrix/matrix.wsf
MEM = mem/module.wsf mem/mem.wsf
STRING = string/module.wsf string/compare.wsf string/print.wsf string/read.wsf string/store.wsf
$(BUILD)/array/array.wsa: $(ARRAY) $(BOOL)
$(BUILD)/array/array_test.wsa: $(ARRAY)
$(BUILD)/array/sort.wsa: $(ARRAY)
$(BUILD)/array/sort_test.wsa: $(ARRAY)
$(BUILD)/bool/bool.wsa: $(BOOL)
$(BUILD)/bool/bool_test.wsa: $(BOOL)
$(BUILD)/char/io.wsa: $(CHAR) $(BOOL)
$(BUILD)/char/io_test.wsa: $(CHAR)
$(BUILD)/char/unicode.wsa: $(CHAR)
$(BUILD)/crypto/caesar.wsa: $(CRYPTO) $(STRING)
$(BUILD)/hash/cusip.wsa: $(HASH) $(BOOL)
$(BUILD)/hash/cusip_test.wsa: $(HASH) $(STRING)
$(BUILD)/hash/luhn.wsa: $(HASH)
$(BUILD)/hash/luhn_test.wsa: $(HASH)
$(BUILD)/int/bits.wsa: $(INT) $(MATH)
$(BUILD)/int/bits_test.wsa: $(INT)
$(BUILD)/int/int.wsa: $(INT)
$(BUILD)/int/print.wsa: $(INT) $(MATH)
$(BUILD)/int/print_test.wsa: $(INT)
$(BUILD)/int/read.wsa: $(INT)
$(BUILD)/map/map.wsa: $(MAP) $(BOOL)
$(BUILD)/map/map_test.wsa: $(MAP)
$(BUILD)/math/collatz.wsa: $(MATH)
$(BUILD)/math/collatz_test.wsa: $(MATH)
$(BUILD)/math/divmod.wsa: $(MATH)
$(BUILD)/math/divmod_test.wsa: $(MATH)
$(BUILD)/math/exp.wsa: $(MATH)
$(BUILD)/math/exp_test.wsa: $(MATH) $(STRING)
$(BUILD)/math/gcd.wsa: $(MATH)
$(BUILD)/math/math.wsa: $(MATH)
$(BUILD)/matrix/matrix.wsa: $(MATRIX) $(ARRAY) $(STRING)
$(BUILD)/matrix/matrix_test.wsa: $(MATRIX) $(ARRAY)
$(BUILD)/mem/mem.wsa: $(MEM)
$(BUILD)/string/compare.wsa: $(STRING) $(BOOL)
$(BUILD)/string/compare_test.wsa: $(STRING) $(MATH)
$(BUILD)/string/print.wsa: $(STRING) $(CHAR) $(INT)
$(BUILD)/string/print_test.wsa: $(STRING)
$(BUILD)/string/read.wsa: $(STRING)
$(BUILD)/string/store.wsa: $(STRING)
$(BUILD)/vm/intcode.wsa: $(MEM) $(INT) $(STRING)

.PHONY: clean
clean:
	@rm -rf $(BUILD)/
