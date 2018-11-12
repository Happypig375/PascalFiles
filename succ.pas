program succ1;
var s : string[1];
    c : char;
begin
  s := '1';
  c := s[1];
  writeln(c);
  writeln(succ(c));
  writeln(c);
  readln
end.
