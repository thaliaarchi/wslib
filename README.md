# wslib

wslib is a library of utilities written in Whitespace, intended to
become the standard library for an upcoming compiler.

## Packages

- Package `io` prints formatted values to stdout and parses values from
  stdin

  - `printc_escape`
  - `printc_quote`
  - `printf`
  - `printi_base`
  - `printi_base_pad_0`
  - `printi_base_pad_s`
  - `printi_base_prefixed`
  - `prints0`
  - `prints_len`

- Package `math` manipulates arbitrary-precision integers

  - `abs`
  - `and`
  - `andnot`
  - `bit_len`
  - `collatz`
  - `exp`
  - `gcd`
  - `max`
  - `min`
  - `not`
  - `or`
  - `print_matrix`
  - `print_vector`
  - `sign`
  - `tediv`
  - `temod`
  - `tfdiv`
  - `tfmod`
  - `transpose_square`
  - `uand`
  - `uandnot`
  - `uor`
  - `uxor`
  - `xor`

- Package `misc` contains miscellaneous standalone programs

  - `cowsay`

## Style

Functions are documented with a prose description similarly to godoc, as
opposed to Javadoc. Labels prefixed with `.` are not exported.

Parameters and return values are specified with Forth-style
`# (x y -- z)` comments and preconditions are specified with
`# Requires` comments. These will hopefully become checked by the
compiler at every call site.

Using the heap for local variables is avoided when possible until
the compiler has sufficient dataflow analysis that can allocate
non-conflicting addresses and registerize most heap operations. Until
then, and on most interpreters, stack operations are significantly
faster than heap operations.

## Syntax

wslib uses [Whitelips](https://vii5ard.github.io/whitespace/)/[Nebula](https://github.com/andrewarchi/nebula)
instruction names, with extended arguments and shorthands. `assemble.sh`
converts the wslib dialect to a format recognizable by
[whitespace-rs](https://github.com/CensoredUsername/whitespace-rs).

### Arguments

- `add`, `sub`, `mul`, `div`, `mod`, and `store` may take up to two
  arguments
- `retrieve`, `ret`, `printc`, `printi`, `readc`, and `readi` may take
  one argument
- `drop` with one argument expands to a combination of `slide` and
  `drop`
- `jz` and `jn` may take one argument as the condition
- `call` and `jmp` may take any number of arguments

### Argument shorthands

- `n` is `push n`
- `^` is `dup`
- `^n` is `copy n`

### Instruction aliases

- `jeof` resolves to `jn` or `jz`, depending on desired EOF behavior

### Tokens

- `#` line comments
- `'X'` ASCII characters
- `'\a'` `'\b'` `'\t'` `'\n'` `'\v'` `'\f'` `'\r'` `'\e'` escapes
- `'\xXX'` hex escapes
- `0xXX` and `-0xXX` hex numbers

## Contributing

If you'd like to help, get in touch by filing an issue, pull request, or
sending me an email. There's lots of useful and interesting library APIs
to implement!

## TODO

- `io`:

  - `prints_quote`
  - `prints_escape`
  - `readi_base`
  - Unicode codepoint quoting
  - Space-padded integers

- `math`:

  - Fix `transpose_square`
  - Fix `print_matrix`
  - `gcd`
  - `extended_gcd`
  - `modexp`
  - `crt`
  - `transpose`
  - `print_matrix_padded`

- `misc`:

  - Finish `cowsay`

- `cipher`:

  - `rsa_enc`
  - `rsa_dec`
  - `rot13`
  - `caesar`

- `ws`

  - `parse`
  - `interpret`

- Tooling:

  - Test driver that runs tests independently to simplify debugging and
    check for uncleared stack values

## License

This project is made available under the
[Mozilla Public License 2.0](https://mozilla.org/MPL/2.0/).
