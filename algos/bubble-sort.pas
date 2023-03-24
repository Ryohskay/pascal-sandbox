program bubble_sort;
type
  // data type
  TItemBubbleSort=integer;

var
	MyArr: array[0..3] of TItemBubbleSort;

procedure swap( var a, b:TItemBubbleSort );
var
  temp : TItemBubbleSort;
begin
  temp := a;
  a := b;
  b := temp;
end;


procedure BubbleSort( var a: array of TItemBubbleSort );
var
  n, newn, i:integer;
begin
  n := high( a );
  repeat
    newn := 0;
    for i := 1 to n   do
      begin
        if a[ i - 1 ] > a[ i ] then
          begin
            swap( a[ i - 1 ], a[ i ]);
            newn := i ;
          end;
      end ;
    n := newn;
  until n = 0;
end;


begin
	MyArr[0] := 4;
	MyArr[1] := 2;
	MyArr[2] := 1;
	MyArr[3] := 3;
	BubbleSort(MyArr);
end.
