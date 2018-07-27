program DecToBin;
var decimal, i : integer;
begin
  write('Input a decimal integer: ');
  readln(decimal);
  case decimal of
    0..127:
      begin
        write('The equivalent binary number is 0');
        for i := 6 downto 0 do
          if decimal >= power(2, i) then
            begin
              write('1');
              decimal := decimal - power(2, i)
            end
          else write('0')
      end;
    -128..-1:
      begin
        write('The equivalent binary number is 1');
        decimal := 128+decimal;
        for i := 6 downto 0 do
          if decimal >= power(2, i) then
            begin
              write('1');
              decimal := decimal - power(2, i)
            end
          else write('0')
      end
    else
      writeln('Invalid input');
  end;
  readln
end.
