program TaxAllowance;
var
  Name : string;
  Income, TotalAllow, ChargeIncome, NoChild, NoDep, Tax : integer;
  Marital, Continue : char;
begin
  repeat
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
    NoChild := 0;
    if Marital = 'M' then
      repeat
        write('Number of children? ');
        readln(NoChild)
      until NoChild >= 0;
    repeat
      write('Number of dependent parents? ');
      readln(NoDep)
    until NoDep >= 0;
    writeln;
    TotalAllow := 30000;
    if Marital = 'M' then TotalAllow := TotalAllow + 30000;
    if NoChild > 5 then TotalAllow := TotalAllow + 50000
    else TotalAllow := TotalAllow + 10000 * NoChild;
    TotalAllow := TotalAllow + NoDep * 15000;
    ChargeIncome := Income - TotalAllow;
    Tax := 0;
    case ChargeIncome of
      0..20000 : Tax := ChargeIncome div 10;
      20001..40000 : Tax := 2000 + (ChargeIncome - 20000) div 5;
      else Tax := 6000 + (ChargeIncome - 40000) * 3 div 10;
    end;
    if Tax > Income div 4 then Tax := Income div 4;
    writeln('Tax for ', Name, ' is $', Tax);
    writeln;
    repeat
      write('Any more (Y or N)? ');
      readln(Continue)
    until (Continue = 'Y') or (Continue = 'N');
    if Continue = 'Y' then writeln;
  until Continue = 'N';
  readln
end.
