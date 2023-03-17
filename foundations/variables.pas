program variables;
{$mode fpc}

var
	num: Integer;

begin
	num := 20;
	num := $1a;  { hex integer }
	num := %10;  { binary integer }
end.
