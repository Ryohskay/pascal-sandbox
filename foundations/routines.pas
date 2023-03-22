program routines;
{$mode fpc}
{$J-}

uses SysUtils;

var
	Num: Integer = 10;


begin
	WriteLn(IntToStr(Num));
	Inc(Num);
	WriteLn(IntToStr(Num));
	Dec(Num);
	WriteLn(IntToStr(Num));
	Write('Odd: ');
	WriteLn(Odd(Num));
	WriteLn('Pred: ' + IntToStr(Pred(Num)));
	WriteLn('Succ: ' + IntToStr(Succ(Num)));
	WriteLn('Lowest of Integer: ' + IntToStr(Low(Num)));
	WriteLn('Hieghest of Integer: ' + IntToStr(High(Num)));
end.
