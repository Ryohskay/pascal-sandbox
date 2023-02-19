# pascal-sandbox
The code here is based on Marco Cantù "Object Pascal Handbook" Delphi 11 Alexsandria Edition. 

## Language version
The compiler is `fpc 3.2.2`.

## Compilation
When compiling, use `fpc ./hello.pas -FE./out/`.

### Apptype
The AppType directive (`{$APPTYPE ...}`) is only meaningful on Win32, Mac, OS2 and AmigaOS ([See documentation](https://www.freepascal.org/docs-html/current/prog/progsu86.html)). On any other systems (e.g. Linux, Windows 11, OpenBSD), the directive will be simply ignored.
