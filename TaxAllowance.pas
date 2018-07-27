program TaxAllowance;
var
  Name : string;
  Income, TotalAllow, ChargeIncome, NoChild, NoDep : integer;
  Marital : char;
begin
  write('Name? ');
  readln(Name);
  repeat
    write('Total annual income? ');
    readln(Income)
  until Income >= 0;
  repeat
    write('Marital status (M=married, S=Single)? ');
    readln(Marital)
  until (Marital = 'M') or (Marital = 'S');
  if Marital = 'M' then
    repeat
      write('Number of children? ');
      readln(NoChild)
    until NoChild >= 0;
  repeat
    write('Number of fependent parents? ');
    readln(NoDep)
  until NoDep >= 0;
  writeln;

end.
