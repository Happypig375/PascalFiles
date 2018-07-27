program HCF_LCM;
var a, b, c : integer;
function GCD(U, V : integer) : integer;
begin
  GCD := 0;
  repeat
    U := U mod V;
    if U=0 then GCD := V else V := V mod U;
    if V=0 then GCD := U;
  until GCD <> 0;
end;
function LCM(a, b : integer) : integer;
begin
  LCM := (a * b) div gcd(a, b);
end;
function HCF(a, b, c : integer) : integer;
begin
  HCF := (a*gcd(b, c)) div lcm(a, gcd(b, c));
end;
begin
  write('Enter 3 positive integers : ');
  readln(a, b, c);
  if (a <= 0) or (b <= 0) or (c <= 0) then
    writeln('Please enter positive values only!!')
  else
    begin
      writeln('The highest common factor is ', hcf(a, b, c));
      writeln('The lowest common multiplier is ', (a*b*c) div hcf(a*b, a*c, b*c));
    end;
  readln
end.
