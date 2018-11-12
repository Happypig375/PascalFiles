program StringTriangle;
var
  s : string;
  i,L : integer;
begin
  write('Input a string : ');
  readln(s);
  L := length(s);
  for i := 1 to L do
    writeln(copy(s,1,i),copy(s,L-i+1,i):2*L-i+1);
  readln
end.
