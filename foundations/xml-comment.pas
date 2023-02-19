program XMLtest;
var
       ret: String;	

function hey(name: String): String;
/// <summary>a function to return a greeting message with name</summary>
begin
	hey := 'Hey, ' + name + '!';
end;

begin
	ret := hey('George');
	writeln(ret);
end.
