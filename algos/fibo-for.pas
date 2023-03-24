program fibo_for;
{ Calculate the fibonacci sequence using only for loop and array }

uses SysUtils;

type
	TFiboIdx = 0..49;

var
	F: array of Integer;
	N: TFiboIdx;
	M, Num1, Num2: Integer;

begin
	SetLength(F, 50);
	F[0] := 0;
	F[1] := 1;
	M := 1;
	WriteLn(F[M-1]);

	for N := 2 to 49 do
		F[N] := F[N-1] + F[N-2];
		WriteLn(F[N]);
end.
