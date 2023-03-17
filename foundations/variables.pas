program variables;
{$mode fpc}

uses SysUtils;

var
	Num: Integer = 20;
	{ special global assignment available, used only 
	because global variable will automatically initialised with a default value anyway }
	Prefix: string;
	Msg: string;
	IsCorrect: Boolean;

begin
	Num := $1a;  { hex integer }
	Num := %10;  { binary integer }
	Prefix := 'The author''s name';  { doubling quotes escapes the quote character }
	{ sys constant sLineBreak is system-dependent newline char }
	Msg := prefix + sLineBreak + 'Marco Cantu''';
	IsCorrect := True;
	WriteLn(Msg);
	WriteLn(IntToStr(Num));
end.
