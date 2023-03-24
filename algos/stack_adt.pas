unit stack_adt;

interface
procedure CLEAR_STACK;  { Deletes all data from stack }
function EMPTY_STACK: boolean;  { Tests for presence of data }
function PUSH(X: Integer): boolean;  { Pushes X onto stack }
function POP(var X: integer): boolean;  { Pops X from stack }

implementation
const
  maxstack = 96;

type
  stacktype = record
    top: Integer;
    node: array [1..maxstack] of Integer;
  end;

var
  my_stack: stacktype;

  procedure CLEAR_STACK;
    begin
      my_stack.top := 0;  { Makes all previous data inaccessible }
    end;

  function EMPTY_STACK: boolean;
    begin
      EMPTY_STACK := (my_stack.top = 0);
    end;

  function PUSH (X: Integer): boolean;
    begin
      PUSH := false;  { Assume the worst }
      with my_stack do
        if top < maxstack then
          begin
            top := top + 1;
            node[top] := X;
            PUSH := true  { Succeeded }
          end
    end;

  function POP (var X: Integer): boolean;
    begin
      POP := false;  { Assume the worst }
      with my_stack do
        if top > 0 then
          begin
            X := node[top];
            top := top - 1;
            POP := true  { Succeeded }
          end
    end;
end.
