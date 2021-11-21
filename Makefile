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
	math/exp_test.wsf math/matrix_test.wsf
WS = $(patsubst %.wsf,$(BUILD)/%.ws,$(WSF))

.PHONY: all
all: $(WS)

$(BUILD)/%.ws: $(BUILD)/%.wsa
	$(ASSEMBLE) -f asm -t -o $@ $<

.PRECIOUS: $(BUILD)/%.wsa
$(BUILD)/%.wsa: %.wsf wsf.sed
	@mkdir -p $(@D)
	$(SED) -Ef wsf.sed $< > $@
	@cat $@ $(filter %.wsa,$^) | sponge $@

$(BUILD)/crypto/caesar.wsa: $(BUILD)/io/read.wsa $(BUILD)/io/print.wsa
$(BUILD)/crypto/luhn.wsa:
$(BUILD)/crypto/luhn_test.wsa: $(BUILD)/crypto/luhn.wsa
$(BUILD)/io/format_int.wsa: $(BUILD)/math/exp.wsa $(BUILD)/math/math.wsa
$(BUILD)/io/format_int_test.wsa: $(BUILD)/io/format_int.wsa
$(BUILD)/io/print.wsa: $(BUILD)/io/format_int.wsa
$(BUILD)/io/print_test.wsa: $(BUILD)/io/print.wsa
$(BUILD)/io/read.wsa:
$(BUILD)/math/bits.wsa: $(BUILD)/math/math.wsa
$(BUILD)/math/bits_test.wsa: $(BUILD)/math/bits.wsa
$(BUILD)/math/collatz.wsa:
$(BUILD)/math/collatz_test.wsa: $(BUILD)/math/collatz.wsa
$(BUILD)/math/divmod.wsa:
$(BUILD)/math/exp.wsa:
$(BUILD)/math/exp_test.wsa: $(BUILD)/math/exp.wsa $(BUILD)/io/print.wsa
$(BUILD)/math/gcd.wsa: $(BUILD)/math/math.wsa
$(BUILD)/math/math.wsa:
$(BUILD)/math/matrix.wsa:
$(BUILD)/math/matrix_test.wsa: $(BUILD)/math/matrix.wsa
$(BUILD)/misc/cowsay.wsa:

.PHONY: clean
clean:
	@rm -rf $(BUILD)/
