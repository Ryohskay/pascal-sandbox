program fibonacci;

uses SysUtils;


function Fibo(N: Integer): Integer;
begin
  WriteLn('Calling Fibo(' + IntToStr(N) + ')!');

  if (N = 0) then
    Fibo := 0  { Base case }
  else if (N = 1) then
    Fibo := 1  { Base case }
  else
    begin 
      Fibo := Fibo(N-1) + Fibo(N-2);
      WriteLn(IntToStr(N) + 'th term: ' + IntToStr(Fibo));
    end;
end;


begin
  Fibo(6);
end.
