program euclids_algo;

uses SysUtils;

var
  ANS: Integer = 0;

function GCD(M, N: Integer): Integer;
begin
  if (N = 0) then
    GCD := M

  else
    GCD := GCD(N, M mod N);
end;

begin
  ANS := GCD(51,15);
  WriteLn(IntToStr(ANS));
end.
