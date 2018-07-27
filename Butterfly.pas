program Butterfly;
var letter : char; number, i, j : integer;
begin
  write('Input a letter ');
  readln(letter);
  write('Input a number ');
  readln(number);
  if (number < 6) or (number > 20) or (number mod 2 = 1) then
    writeln('Invalid number. It must be an even number ranging from 6 to 20, both inclusive.')
  else
  begin
    writeln;
    for j := 1 to number div 2 - 1 do
    begin
      for i := 1 to j do write(letter);
      for i := 1 to number - j * 2 do write(' ');
      for i := j downto 1 do write(letter);
      writeln
    end;
    for j := number div 2 downto 1 do
    begin
      for i := 1 to j do write(letter);
      for i := 1 to number - j * 2 do write(' ');
      for i := j downto 1 do write(letter);
      writeln
    end
  end;
  readln
end.

