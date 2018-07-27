program Finding_HCF; uses math;
var
  n1, n2, i, hcf : integer;
begin
  write('Enter two positive integers : ');
  readln(n1, n2);
  hcf := 1;
  for i := 2 to min(n1, n2) do
    while (n1 mod i = 0) and (n2 mod i = 0) do
      begin
        n1 := n1 div i;
        n2 := n2 div i;
        hcf := hcf * i;
      end;
  writeln('The HCF of ', n1 * hcf, ' and ', n2 * hcf, ' is ', hcf);
  readln
end.
