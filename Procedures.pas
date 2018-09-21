program Procedures;
var x, y : integer;

procedure p1;
begin
    x := x + 7;
    writeln(x, ' ', y);
end;

procedure p2;
begin
    writeln(x - 2, ' ', y);
    y := x + y;
end;

begin
    x := 5; 
    y := 8;
    p1;
    writeln(x, ' ', y);
    p2;
    writeln(x, ' ', y);
    readln;
end.
