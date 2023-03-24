program fibo_for;
{ Calculate the fibonacci sequence using only for loop and array }

uses SysUtils;

type
	TArrFibo = array[0..49] of Integer;
	TFiboIdx = 0..49;

var
	F: TArrFibo;
	N: TFiboIdx;
	M, Num1, Num2: Integer;

begin
	F[0] := 0;
	F[1] := 1;
	M := 1;
	WriteLn(F[M-1]);

	N := 2;
	while N < 49 do
		WriteLn(N);
		Num1 := F[N-1];
		Num2 := F[N-2];
		F[N] := Num1 + Num2;
		WriteLn(F[N]);
		Inc(N, 50);
end.
