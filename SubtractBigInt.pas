program SubtractBigInt;
var
  N1, N2, Ans: string;
  i, L1, L2, S, Borrow : integer;
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
    Borrow := 0;
    Ans := '';
    for i := length(N1) downto 1 do
    begin
      S := ord(N1[i]) - ord(N2[i]) - Borrow;
      Borrow := 0;
      if S < 0 then
      begin
        S := S + 10;
        Borrow := 1;
      end;
      Ans := chr(S + ord('0')) + Ans
    end;
    if Borrow = 1 then
    begin
      for i := 1 to length(Ans) - 1 do
        Ans[i] := chr(9 - ord(Ans[i]) + 2 * ord('0'));
      Ans[length(Ans)] := chr(10 - ord(Ans[length(Ans)]) + 2 * ord('0'));
      i := 1;
      while Ans[i] = '0' do
        Ans := copy(Ans, 2, length(Ans) - 1);
      Ans := '-' + Ans;
    end
    else
    begin
      i := 1;
      while Ans[i] = '0' do
        Ans := copy(Ans, 2, length(Ans) - 1);
    end;
    writeln('The difference of the two integers is ', Ans);
    writeln;
    write('Do you want to continue? (Y/N): ');
    readln(Response);
    writeln
  until (Response = 'N') or (Response = 'n');
end.
