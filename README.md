# pascal-sandbox
The code here is based on Marco Cantù "Object Pascal Handbook" Delphi 11 Alexsandria Edition. 

## Language version
The compiler is `fpc 3.2.2`.

## Type notation
Type names such as `Integer` are just identifiers, so the first letter should be capitalised.
However, `string` is a reserved word, so it must be all in lower letters.

## Compilation
When compiling, use `fpc ./hello.pas -FE./out/`.

### Apptype
The AppType directive (`{$APPTYPE ...}`) is only meaningful on Win32, Mac, OS2 and AmigaOS ([See documentation](https://www.freepascal.org/docs-html/current/prog/progsu86.html)). On any other systems (e.g. Linux, Windows 11, OpenBSD), the directive will be simply ignored.

### XML comments
Unlike Delphi, XML comments on functions or other declarations with `///` does not seem to be working.
