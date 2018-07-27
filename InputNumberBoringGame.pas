program InputNumberBoringGame;
var FST, SCD, X, P, WIN : integer;
procedure calcpt(num : integer);
begin
  case num of
    1 : P := 3;
    2, 3, 5 : P := 2;
    4 : P := 1;
    else P := 0;
  end
end;
begin
  FST := 0;
  SCD := 0;
  repeat
    write('Player 1: Input an integer ');
    readln(X);
    calcpt(X);
    FST := FST + P;
    if FST >= 15 then WIN := 1
    else
    begin
      write('Player 2: Input an integer ');
      readln(X);
      calcpt(X);
      SCD := SCD + P;
      if SCD >= 15 then WIN := 2;
    end
  until (FST >= 15) or (SCD >= 15);
  writeln('The winner is player ', WIN);
  readln
end.
