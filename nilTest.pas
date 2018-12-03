var s, s2 : string; i : integer;
begin
  readln(s);
  s2 := copy(s, 1, length(s));
  for i := 1 to length(s) do
    s2[i] := s[length(s) - i + 1];
  if s = s2 then
    writeln('Yes')
  else writeln('No')
end.
