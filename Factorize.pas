program Factorize;
var
  num, factor : integer; found : boolean;
begin
  write('Enter a positive integer : ');
  readln(num);
  write('Factorized form : 1');
  factor := 1;
  while num <> 1 do
  begin
    repeat
      factor := factor + 1;
    until num mod factor = 0;
    write(' * ', factor);
    num := num div factor;
    factor := 1;
  end;
  readln
end.
