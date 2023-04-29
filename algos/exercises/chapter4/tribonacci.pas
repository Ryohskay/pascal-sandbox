program tribonacci;

var
  value: Integer;

function tribo(num: Integer): Integer;
{ function to calculate N-th term of tribonacci sequence }
begin
  { Base Cases }
  if (num = 0) OR (num = 1) then
    tribo := 0
  else if num = 2 then
    tribo := 1
  else
    tribo := tribo(num-1) + tribo(num-2) + tribo(num-3);
end;


begin
  value := tribo(10);
  WriteLn(value);
end.
