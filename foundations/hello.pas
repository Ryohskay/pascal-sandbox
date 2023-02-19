program HelloConsole;

{$APPTYPE CONSOLE}

var
	msg: string;

begin
	msg := 'Hello, World!';
	Writeln(msg);
	// wait until the Enter key is pressed
	Readln;
end.
