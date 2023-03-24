program for_loop;

type
	TF = array[0..50] of Integer;
	TIndex = 0..50;

var
	F: TF;
	I: TIndex;

begin
	F[0] := 0;
	F[1] := 1;
	for I := 0 to 49 do
		WriteLn(I);
end.
