program memonacci;
{$mode objfpc}
{ Implementation of fibonacci sequence calculation by recursion with memoization }

var
  memo: array of int64;  { Dynamic array for memoization }

function Fibo(N: Integer): int64;
  begin
    { Base cases }
    if (N = 0) then
      begin
        Result := 0;
        Exit;
      end
    else if (N = 1) then
      begin
        Result := 1;
        Exit;
      end;
    
    { Look for the value in memo }
    if (memo[N] == -1) then
      begin
        Result := Fibo(N-1) + Fibo(N-2);
        memo[N] := Result;
      end
    else
      Result := memo[N];
  end;


begin
  SetLength(memo, 50);  { Instanciate memo by SetLength() }
  for i := 0 to 49
