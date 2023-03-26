program scopes;
{ A program to check how a scope in Pascal works. }

var
  Greeting: string;

procedure Greets(Name: string);
  begin
    WriteLn(Greeting + Name);
  end;

begin
  Greeting := 'Hello, ';
  Greets('RYO');
end.
