program variables;
{$mode fpc}

var
	num: Integer = 20;
	{ special global assignment available, used only 
	because global variable will automatically initialised with a default value anyway }
	prefix: string;
	msg: string;
	IsCorrect: Boolean;

begin
	num := $1a;  { hex integer }
	num := %10;  { binary integer }
	prefix := 'The author''s name';  { doubling quotes escapes the quote character }
	{ sys constant sLineBreak is system-dependent newline char }
	msg := prefix + sLineBreak + 'Marco Cantu''';
	IsCorrect := True;
	WriteLn(msg);
end.
