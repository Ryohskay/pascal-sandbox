program length_out;
{$mode objfpc}
{ Program to show examples of string-related operations }
var
  Greetings, Name: string;

begin
  Greetings := 'Hello, World!';
  Name := 'Ryo';
  WriteLn(Length(Greetings));
end.
