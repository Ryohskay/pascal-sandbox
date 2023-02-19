program XMLtest;
var
       ret: string;	

function hey(name: string): string;
/// <summary>a function to return a greeting message with name</summary>
begin
	hey := 'Hey, ' + name + '!';
end;

begin
	ret := hey('George');
	writeln(ret);
end.
