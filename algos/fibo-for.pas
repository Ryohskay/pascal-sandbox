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

	for N := Low(F) to High(F) do
		if N = 0 then
			F[N] := 0
		else if N = 1 then
			F[N] := 1
		else
			begin
				Num1 := N-1;
				Num2 := N-2;
				F[N] := F[Num1] + F[Num2];
			end;
		WriteLn(F[N]);
end.
