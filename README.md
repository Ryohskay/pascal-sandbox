# pascal-sandbox
The code here is based on Marco Cantù "Object Pascal Handbook" Delphi 11 Alexsandria Edition. 

## Language version
The compiler is `fpc 3.2.2`.

## Type notation
Type names such as `Integer` are just identifiers, so the first letter should be capitalised.
However, `string` is a reserved word, so it must be all in lower letters.

### Numeric separator
Numeric separator, such as `10_000_000` is not yet available in fpc 3.2.\*.
It would be available after 3.3.\* release in the future, with `{$modeswitch underscoreisseparator}` compiler directive.

For Decimal Separators (the division marker used when printing the value), see [DecimalSeparator Documentation](https://wiki.freepascal.org/DecimalSeparator) 

### Inline variables
Apparently, inline variables are not available in fpc.

### Type casting
The book suggests `ToString()` method on Integer, but I believe it is not available in fpc-Pascal.
It is instead available as a utility function `IntToString()`.

#### Type inference
Type inference is not available in current fpc. I think I've read it's coming in the next release of fpc...

## Compilation
When compiling, use `fpc ./hello.pas -Crio -FE./out/`.

### Out of Range
Out of range operation triggers a compilation error in Delphi, but it only invokes a warning in fpc.
**In order to enforce such out-of-range operation to cause error, use** `-Crio` compiler options.

#### Documentation issue?
According to [this page on FPC wiki](https://wiki.freepascal.org/local_compiler_directives#$R_versus_$Q),
it reads as if there is no practical difference between `$R` (`$rangeChecks`) and `$Q` (`$overflowChecks`):

However, when compiling out_of_range.pas, `$R` **DOES** produces an error and stops compilation,
but `$Q` just produces a warning. Try to use `$R` direcrives when writing them in your codes.

### Apptype
The AppType directive (`{$APPTYPE ...}`) is only meaningful on Win32, Mac, OS2 and AmigaOS ([See documentation](https://www.freepascal.org/docs-html/current/prog/progsu86.html)). On any other systems (e.g. Linux, Windows 11, OpenBSD), the directive will be simply ignored.

### Include
`{$INCLUDE}` directive in fpc uses components from other parts of the project.
While this is similar to C/C++ includes, it is mostly used to include shared set of compiler directives in library projects.

### XML comments
Unlike Delphi, XML comments on functions or other declarations with `///` does not seem to be working.
