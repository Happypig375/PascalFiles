program Ranking;

var
   Mark : array[1..40] of integer;
   Rank : array[1..40] of integer;
   i, j, temp: integer;
   f : text;

begin
   Mark[1] := 45;
   Mark[2] := 44;
   Mark[3] := 43;
   Mark[4] := 42;
   Mark[5] := 41;
   Mark[6] := 40;
   Mark[7] := 46;
   Mark[8] := 47;
   Mark[9] := 48;
   Mark[10] := 49;
   Mark[11] := 55;
   Mark[12] := 54;
   Mark[13] := 53;
   Mark[14] := 52;
   Mark[15] := 51;
   Mark[16] := 50;
   Mark[17] := 56;
   Mark[18] := 57;
   Mark[19] := 58;
   Mark[20] := 59;
   Mark[21] := 65;
   Mark[22] := 64;
   Mark[23] := 63;
   Mark[24] := 62;
   Mark[25] := 61;
   Mark[26] := 60;
   Mark[27] := 66;
   Mark[28] := 67;
   Mark[29] := 68;
   Mark[30] := 69;
   Mark[31] := 45;
   Mark[32] := 55;
   Mark[33] := 65;
   Mark[34] := 46;
   Mark[35] := 56;
   Mark[36] := 66;
   Mark[37] := 44;
   Mark[38] := 45;
   Mark[39] := 46;
   Mark[40] := 70;
   for i := 1 to 40 do
       for j := 1 to 40 - i do
           if Mark[j] < Mark[j+1] then begin
              temp := Mark[j];
              Mark[j] := Mark[j+1];
              Mark[j+1] := temp;
           end;
   for i := 1 to 40 do begin
       if (i > 1) and (Mark[i - 1] = Mark[i]) then Rank[i] := Rank[i-1]

       else Rank[i] := i;
   end;
   writeln('Mark Rank');
   for i := 1 to 40 do
       writeln(Mark[i]:3, Rank[i]:5);
   readln
end.
