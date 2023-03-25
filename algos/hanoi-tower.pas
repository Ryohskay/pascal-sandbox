program tower_of_hanoi;
{$mode objfpc}
{ Program to compute the steps to complete the Tower of Hanoi problem }

procedure Hanoi(n, source, dest: Integer);
{ recursively solve Tower of Hanoi }
  var
    temp: Integer;

  begin
    if n = 1 then
      WriteLn('Move disc from peg ', source, ' to peg ', dest)
    else
      begin
        temp := 6 - source - dest;
        Hanoi(n-1, source, temp);
        WriteLn('Move disc from peg ', source, ' to peg ', dest);
        Hanoi(n-1, temp, dest);
      end
  end;


begin
  Hanoi(5, 1, 3);
end.
