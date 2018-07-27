program hi;
var a := '1';
begin
  a := '1';
  while true do
  begin
    a := pred(a);
    write(a, ' ', ord(a));
    readln;
  end;
end.
