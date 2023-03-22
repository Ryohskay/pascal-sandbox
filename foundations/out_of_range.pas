program outofrange;

var
	M: UInt16;
	N: UInt16;

begin
	M := 0;
	M := 100 + High(M);  {This invokes compiler warning}
	WriteLn(M);
	{ Following does not trigger compile time warning }
	N := 0;
	Inc(N, High(N));
	WriteLn(N);
end.
