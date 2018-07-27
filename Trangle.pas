program Triangle;
var i, j, height : integer;
const char = '*';
procedure println(indent, count : integer);
begin
  write(char:indent);
  for j := 2 to count do write(char);
  writeln;
end;
begin
  write('Enter height of triangle: ');
  readln(height);
  for i := 1 to height do println(height - i + 1, 2*i-1);
  readln
end.
