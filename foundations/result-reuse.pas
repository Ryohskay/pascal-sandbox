program result_reuse;
{$mode objfpc}
{ A program to know if you can reuse value in Result }

function Plus(First, Second: Integer): Integer;
  begin
    Result := First + Second;
    WriteLn('The result is: ', Result);
  end;

begin
  Plus(5, 1);
end.
