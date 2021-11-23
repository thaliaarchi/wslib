# wslib

wslib is a library of utilities written in Whitespace, intended to
become the standard library for an upcoming compiler.

## Modules

- `crypto`: non-cryptographic ciphers
- `io`: reading and printing routines
- `math`: arbitrary-precision integer math functions
- `types`: higher-level types
  - `array`
  - `bits`
  - `bool`
  - `matrix`
- `misc`: miscellaneous standalone programs

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

### Instruction shorthands

- `n` -> `push n`
- `^` -> `dup`
- `^n` -> `copy n`
- `nslide` -> `slide n`
- `+` -> `add`
- `-` -> `sub`
- `*` -> `mul`
- `/` -> `div`
- `%` -> `mod`

### Instruction macros

- `2dup` -> `^1 ^1`
- `3dup` -> `^2 ^2 ^2`
- `4dup` -> `^3 ^3 ^3 ^3`
- `5dup` -> `^4 ^4 ^4 ^4 ^4`
- `6dup` -> `^5 ^5 ^5 ^5 ^5 ^5`
- `7dup` -> `^6 ^6 ^6 ^6 ^6 ^6 ^6`
- `8dup` -> `^7 ^7 ^7 ^7 ^7 ^7 ^7 ^7`
- `9dup` -> `^8 ^8 ^8 ^8 ^8 ^8 ^8 ^8 ^8`
- `10dup` -> `^9 ^9 ^9 ^9 ^9 ^9 ^9 ^9 ^9 ^9`
- `2drop` -> `drop drop`
- `3drop` -> `drop drop drop`
- `4drop` -> `3slide drop`
- `5drop` -> `4slide drop`
- `6drop` -> `5slide drop`
- `7drop` -> `6slide drop`
- `8drop` -> `7slide drop`
- `9drop` -> `8slide drop`
- `10drop` -> `9slide drop`
- `n+` -> `n +`
- `n-` -> `n -`
- `n*` -> `n *`
- `n/` -> `n /`
- `n%` -> `n %`
- `neg` -> `-1 *`
- `j=` -> `- jz`
- `j<` -> `- jn`
- `j>` -> `swap - jn`
- `j<=` -> `1 + - jn`
- `j>=` -> `swap 1 + - jn`
- `jeof` -> `jn`, `jz`, or `1 - jn` (depending on desired EOF behavior)

### Imports

- `"module" import` - import module
- `"module" export` - import module under the exporting module's name

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

  - `gcd`
  - `extended_gcd`
  - `modexp`
  - `crt`
  - `print_matrix_padded`

- `misc`:

  - Finish `cowsay`

- `cipher`:

  - `rsa_enc`
  - `rsa_dec`

- `ws`

  - `parse`
  - `interpret`

- Tooling:

  - Test driver that runs tests independently to simplify debugging and
    check for uncleared stack values

## License

This project is made available under the
[Mozilla Public License 2.0](https://mozilla.org/MPL/2.0/).
