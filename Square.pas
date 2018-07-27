program Square;
var N, i, j : integer;
procedure writeedge;
begin
  write('+-');
  for i := 1 to N do write('I-');
  writeln('+');
end;
procedure writerow;
begin
  write('I-');
  for i := 1 to N do write('*-');
  writeln('I');
end;
begin
  write('Input value of N ');
  readln(N);
  if N < 0 then writeln('N cannot be negative')
  else if N >= 15 then writeln('N must be less than 15')
  else
  begin
    writeln;
    writeedge;
    for j := 1 to N do writerow;
    writeedge
  end;
  readln
end.

