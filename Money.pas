program Money;
var input : real; num : integer;
procedure PrintAmount(word : string; baseUnit : integer);
begin
  writeln(word, ' coins: ', num div baseUnit);
  num := num mod baseUnit;
end;
begin
  write('Enter an amount of money: ');
  readln(input);
  num := round(input * 10);
  PrintAmount('5-dollar', 50);
  PrintAmount('2-dollar', 20);
  PrintAmount('1-dollar', 10);
  PrintAmount('50-cent', 5);
  PrintAmount('20-cent', 2);
  PrintAmount('10-cent', 1);
  readln
end.
