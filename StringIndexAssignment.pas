program StringIndexAssignment;
var s1, s2 : string;
begin
  s1 := '123';
  s1 += '4';
  s2 := s1;
  s2[1] := s1[2];
  writeln(s1);
  writeln(s2);
  readln
end.
