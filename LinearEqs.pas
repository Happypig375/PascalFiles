program LinearEqs;
var x1, y1, c1, x2, y2, c2 : real;
procedure readvar(name : char; var output : real);
begin
  write(name, ' = ');
  readln(output);
end;
begin
  writeln('A program to solve simultaneous equations :');
  writeln('ax + by = c');
  writeln('dx + ey = f');
  writeln;
  readvar('a', x1);
  readvar('b', y1);
  readvar('c', c1);
  readvar('d', x2);
  readvar('e', y2);
  readvar('f', c2);
  writeln;
  (*Multiply so that the y term can be cancelled*)
  y2 := y1 / y2;
  x2 := x2 * y2;
  c2 := c2 * y2;
  y2 := y1;
  if x1 = x2 then
    if c1 = c2 then writeln('The system has infinitely many solutions.')
    else writeln('The system has no solution.')
  else
  begin
    x2 := (c2 - c1) / (x2 - x1);
    writeln('x = ', x2 :0:2);
    writeln('y = ', (c1 - x1 * x2) / y1 :0:2);
  end;
  readln;
end.


