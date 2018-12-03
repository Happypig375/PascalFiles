program MultiAssign;
var a, b, c : integer;
    arr : array[byte] of integer;
begin
  a := 0; b := 0; c := 0;
  inc(a); 
  dec(b);
  inc(c);
  writeln(a / 2:3, b:3, c:3);
  readln
end.
