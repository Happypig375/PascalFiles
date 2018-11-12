program StringTest;
var L, C : integer;
    S, F : string;
begin
  readln(S);
  L := length(S);
  for C := 1 to L do
    begin
      F := copy(S, 1, L div 2);
      write(F);
    end;
  writeln;
  readln
end.
