program tribonacci;

var
  value, I: Integer;

function tribo(num: Integer): Integer;
var
  memo: array of int64;  { Dynamic array for memoization }
  calc, J:  Integer;

{ function to calculate N-th term of tribonacci sequence }
begin
  if (num < 0) then
    begin
      WriteLn('Tribo input out of range!');
      tribo := -1;
      Exit;
    end;

  { Initialize the memoization array }
  SetLength(memo, num+1);
  for J := 0 to num do
    memo[J] := -1;

  { Base Cases }
  if (num = 0) OR (num = 1) then
    tribo := 0
  else if num = 2 then
    tribo := 1
  else if (memo[num] = -1) then
    begin
      calc := tribo(num-1) + tribo(num-2) + tribo(num-3);
      memo[num] := calc;
      tribo := calc;
    end
  else
    tribo := memo[num];
end;


begin
  value := tribo(50);
  WriteLn(value);
end.
