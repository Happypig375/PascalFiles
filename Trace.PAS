program UsingParameters2;
var
   X, Y : integer;

procedure Swap(var A, B: integer);
{ Interchange A and B }
var
   temp : integer;
begin
   temp := A;
   A := B;
   B := temp
end;   { Swap }

begin { main program }
   X := 1;
   Y := 2;
   Swap (X, Y);
   writeln('X = ', X);
   writeln('Y = ', Y)
end.
