program if_else;
{$mode objfpc}
{ A program to know how if and else statements work in Pascal }

var
  Flag: boolean;

begin
  Flag := true;

  if Flag = true then
    begin
      WriteLn('The flag is true.');
      WriteLn('Hello, this is a Pascal program compiled with FPC.');
    end
  else
    begin
      WriteLn('The flag is false.');
      WriteLn('How r u doin dude?');
    end;
end.
