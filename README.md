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

### Inline variables
Apparently, inline variables are not available in fpc.

## Compilation
When compiling, use `fpc ./hello.pas -FE./out/`.

### Apptype
The AppType directive (`{$APPTYPE ...}`) is only meaningful on Win32, Mac, OS2 and AmigaOS ([See documentation](https://www.freepascal.org/docs-html/current/prog/progsu86.html)). On any other systems (e.g. Linux, Windows 11, OpenBSD), the directive will be simply ignored.

### Include
`{$INCLUDE}` directive in fpc uses components from other parts of the project.
While this is similar to C/C++ includes, it is mostly used to include shared set of compiler directives in library projects.

### XML comments
Unlike Delphi, XML comments on functions or other declarations with `///` does not seem to be working.
