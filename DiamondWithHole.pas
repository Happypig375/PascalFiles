program DiamondWithHole;
uses crt;
var letter : char; number, i : integer; scrW : byte;
procedure measureW;
const maxW = 255;
var currX, currY : byte;
begin
  currX := WhereX;
  currY := WhereY;
  write(StringOfChar(' ', maxW));
  scrW := (maxW - (WhereX - currX)) div (WhereY - currY);
  GotoXY(currX, currY);
end;
procedure writectrln(str : string);
begin
  GotoXY((scrW - length(str)) div 2, WhereY);
  writeln(str);
end;
begin
  measureW;
  write('Input a letter ');
  readln(letter);
  write('Input a number ');
  readln(number);
  if (number >= 2) and (number <= 5) then
  begin
    for i := 1 to number do
      writectrln(StringOfChar(letter, i * 2 - 1));
    for i := 2 to number do
      writectrln(StringOfChar(letter, i) + StringOfChar(' ', number * 2 - 3) + StringOfChar(letter, i));
    for i := number - 1 downto 2 do
      writectrln(StringOfChar(letter, i) + StringOfChar(' ', number * 2 - 3) + StringOfChar(letter, i));
    for i := number downto 1 do
      writectrln(StringOfChar(letter, i * 2 - 1));
  end
  else writeln('Invalid number. The number should be one of 2, 3, 4 and 5.');
  readln;
end.
