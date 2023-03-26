program memonacci;
{$mode objfpc}
{ Implementation of fibonacci sequence calculation by recursion with memoization }

var
  memo: array[2..50] of int64;  { Dynamic array for memoization }
  I, J: Integer;  { Loop vars }

function Fibo(N: Integer): int64;
  var
    Calc: int64;

  begin
    { NB: N must be >=1 }
    if N <= 0 then
      begin
        WriteLn('Fibo(N): N must be a positive integer (>=1)!');
        Exit;
      end;

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
    if (memo[N] = -1) then
      begin
        Calc := Fibo(N-1) + Fibo(N-2);
        memo[N] := Calc;
        Result := Calc;
      end
    else
      Result := memo[N];
  end;


begin
  for I := 2 to 50 do
    memo[I] := -1;  { initialse all slot with -1 }

  { Calculate N+1 th Fibonacci sequence term }
  Fibo(49);

  { The array memo now contains answers }
  for J := 2 to 50 do
    WriteLn(J+1, 'th term: ', memo[J], '!');
end.
