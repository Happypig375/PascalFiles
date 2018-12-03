program AddBigInt;
var
  N1, N2, Ans: string;
  i, L1, L2, S, Carry : integer;
  Response : char;
begin
  repeat
    write('Input the first integer: ');
    readln(N1);
    write('Input the second integer: ');
    readln(N2);
    L1 := length(N1);
    L2 := length(N2);
    if L1 > L2 then
      for i := 1 to L1 - L2 do
        N2 := '0' + N2
    else
      for i := 1 to L2 - L1 do
        N1 := '0' + N1;
    Carry := 0;
    Ans := '';
    for i := length(N1) downto 1 do
    begin
      S := ord(N1[i]) + ord(N2[i]) - 2*ord('0') + Carry;
      Carry := 0;
      if S > 9 then
      begin
        S := S - 10;
        Carry := 1;
      end;
      Ans := chr(S + ord('0')) + Ans;
    end;
    if Carry = 1 then
      Ans := '1' + Ans;
    writeln('The sum of the two integers is ', Ans);
    writeln;
    write('Do you want to continue? (Y/N): ');
    readln(Response);
    writeln
  until (Response = 'N') or (Response = 'n');
end.
