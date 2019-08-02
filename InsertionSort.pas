program InsertionSort;
type list = Array[1..20] of integer;
var i, j, k, temp : integer; A: list;
begin
    { Initialize }
    for i := 1 to 20 do A[i] := 21 - i;

    { Algorithm }
    for i := 2 to 20 do
    begin
         temp := A[i];
         j := 1;
         while(temp > A[j]) and (j <= i + 1) do
             j := j + 1;
         for k := 20 downto j + 1 do
             A[k] := A[k - 1];
         for k := 1 to 20 do write(A[k], ', ');
         writeln;
         A[j] := temp
    end;

    { Print }
    writeln;
    writeln('Finally:');
    for i := 1 to 20 do write(A[i], ', ');
    readln
end.
