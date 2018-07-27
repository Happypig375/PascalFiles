program Membership;
var MNUM, X, Y, SUM, CNT : integer;
begin
  write('Enter membership number : ');
  readln(MNUM);
  X := MNUM;
  SUM := 0;
  CNT := 1;
  while CNT < 6 do
  begin
    Y := (X div 10) * 10;
    SUM := SUM + X - Y;
    X := Y div 10;
    CNT := succ(CNT);
  end;
  if SUM mod 10 <> 0 then write('IN');
  writeln('VALID NUMBER');
  readln
end.
