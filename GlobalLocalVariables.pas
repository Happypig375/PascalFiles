
program QQ;
var
  a, b : integer;

procedure P1(c, d : integer);
var t : integer;
begin
  t := c + d;
  d := t - d;
  c := t - d
end;

procedure P2(var c, d : integer);
var t : integer;
begin
  t := c + d;
  d := t - d;
  c := t - d
end;

begin
  a := 1;
  b := 2;
  P1(a,b);
  writeln(a, b:3);
  P2(a,b);
  writeln(a, b:3);
end.
