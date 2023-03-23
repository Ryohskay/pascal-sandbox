program recursive_sum;

uses SysUtils;


function Func(N: Integer): Integer;
begin
  WriteLn('Func(' + IntToStr(N) + ') has been called!');
  if (N = 0) then
    Func := 0
    { NB: Result is a keyword for return value }

  else
    Func := N + Func(N - 1);
    WriteLn('Sum up to ' + IntToStr(N) + ' is: ' + IntToStr(Func));
end; { function }


begin
  Func(5);
end.
