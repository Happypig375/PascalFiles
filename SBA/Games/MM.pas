program MasterMind;
var	N, max, i, j, k : integer;
    CP, CN : array [1..20] of integer;
    Guess : array [1..20] of string;
    Ans : string[4];
    Use : array [1..52] of boolean;
    Response : char;
    Correct : boolean;

procedure NDigit;
begin
   repeat
      write('Input number of different digits (4 - 9)? ');
      readln(N)
   until (N >= 4) and (N <= 9);
end;

procedure NGuess;
begin
   repeat
      write('Input maximum number of guesses (1 - 20)? ');
      readln(Max)
   until (Max >= 1) and (Max <= 20);
end;

procedure GenerateCode (var SCode : string[4]);
var S : integer;  Strg : string;
begin
   Scode := '';
   for i := 1 to 4 do begin
       repeat
           S := random(N) + 1
       until not Use[S];
       Use[S] := true;
       str(S, Strg);
       SCode := SCode +  Strg
   end;
end;

procedure CheckGuess (G : string[4]; var B, W : integer);
begin
   B := 0; W := 0;
   for j := 1 to 4 do
       for k := 1 to 4 do
           if (G[j] = Ans[k]) then
              if j = k then B := B + 1
              else W := W + 1
end;

procedure DisplayGuess;
begin
   for j := 1 to i do
       writeln('Guess ', j, '? ', Guess[j], CP[j]:10, 'P', CN[j]:2, 'N')
end;

begin
   randomize;
   repeat
      NDigit;
      NGuess;
      writeln;
      for i := 1 to N do Use[i] := false;
      for i := 1 to Max do begin
          CP[i] := 0; CN[i] := 0 end;
      GenerateCode(Ans);
      i := 0; Correct := false;
      repeat
          i := i + 1;
          repeat
              write('Guess ', i, '? ');
              readln(Guess[i]);
              k := 0;
              for j := 1 to 4 do
                  if (copy(Guess[i], j, 1) >= '1') and (copy(Guess[i], j, 1) <= chr(N + 48)) then k:= k + 1
          until (k = 4) and (length(Guess[i]) = 4);
          writeln;
          CheckGuess(Guess[i], CP[i], CN[i]);
          if CP[i] = 4 then Correct := true
             else DisplayGuess;
      until (i = Max) or Correct;
      writeln;
      if Correct then
         writeln('Congratulations! You win!')
      else begin
         writeln('Sorry! You lose!');
         writeln('The correct answer is ', Ans)
      end;
      writeln;
      write('Do you want to continue (y/n)? ');
      readln(Response);
      writeln
   until (Response = 'n') or (Response = 'N');
   readln
end.

