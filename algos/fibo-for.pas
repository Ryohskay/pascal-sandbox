program fibo_for;
{$mode objfpc}
{ Calculate the fibonacci sequence using only for loop and array }

uses SysUtils;

type
  TFiboIdx = 2..24;

var
  F: array of Integer;
  N: TFiboIdx;
  Num1, Num2: Integer;

begin
  SetLength(F, 25);
  F[0] := 0;
  F[1] := 1;

  for N := Low(N) to High(N) do
    begin
      WriteLn(IntToStr(N+1) + 'th term is processed;');
      Num1 := N-1;
      Num2 := N-2;
      F[N] := F[Num1] + F[Num2];
      WriteLn(F[N]);  { Print N+1 th fibonacci sequence term }
    end;
end.
