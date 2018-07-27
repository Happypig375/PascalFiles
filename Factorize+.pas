program FactorizePlus;
var num, i, freq : integer;
begin
  write('Enter a positive integer : ');
  readln(num);
  write('Factorized form : ');
  if num < 0 then
  begin
    write('-');
    num := abs(num);
  end;
  case num of
    0 : writeln('0');
    1 : writeln('1');
    else
      begin
        for i := 2 to num do
          begin
            freq := 0;
            while num mod i = 0 do
            begin
              freq := succ(freq);
              num := num div i;
            end;
            case freq of
              0 : ;
              1 : write(i, ' * ');
              else write(i, '^', freq, ' * ');
            end;
          end;
        writeln(char(8), char(8), '  '); {delete last '* '}
      end;
  end;
  readln
end.
