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
procedure writectr(str : string);
begin
  GotoXY((scrW - length(str)) div 2, WhereY);
  write(str);
end;
begin
  measureW;
  write('Input a letter ');
  readln(letter);
  write('Input a number ');
  readln(number);
  if (number >= 2) and (number <= 5) then
  begin
    for i := 1 to number + 1 do writectr(StringOfChar(letter, i * 2 - 1) + #13#10);
    readln;
  end
  else writeln('Invalid number. The number should be one of 2, 3, 4 and 5.');
end.
