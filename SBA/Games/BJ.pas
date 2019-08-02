program BlackJack;
var	i, j, k : integer;
    PlayerScore, ComputerScore, PCount, CCount : integer;
    PlayerCard, ComputerCard : array [1..10] of string[2];
    Card : array [1..52] of string[2];
    Use : array [1..52] of boolean;
    Response : char;
const NUMBER = 'A23456789TJQK'; SUIT = 'SHCD';


procedure CreatCard;
begin
   k := 1;
   for i := 3 to 6 do
      for j := 1 to 13 do begin
         Card[k] :=  NUMBER[j] + chr(i);
         k := k + 1
      end;
end;


procedure SelectCard (var SCard : string[2]);
var C : integer;

begin
   repeat
      C := random(52) + 1
   until not Use[C];
   Use[C] := true;
   SCard := Card[C]
end;


procedure FindScore (C : string[2]; var Score : integer);
var S, err : integer;

begin
   if (copy(C,1,1) = 'A') then if (Score <= 10) then S := 11 else S := 1
   else if (copy(C,1,1) = 'T') or (copy(C,1,1) = 'J') or (copy(C,1,1) = 'Q') or (copy(C,1,1) = 'K') then S := 10
        else val(copy(C,1,1), S, err);
   Score := Score + S;
end;


begin
   randomize;
   repeat
      PlayerScore := 0;  PCount := 1; ComputerScore := 0;  CCount := 1;
      for i := 1 to 52 do Use[i] := false;
      CreatCard;
      SelectCard(PlayerCard[PCount]);
      FindScore(PlayerCard[PCount], PlayerScore); PCount := PCount + 1;
      SelectCard(PlayerCard[PCount]);
      FindScore(PlayerCard[PCount], PlayerScore); PCount := PCount + 1;
      writeln('Player''s cards: ', PlayerCard[1], PlayerCard[2] : 3);
      writeln('Player''s total score: ', PlayerScore);
      SelectCard(ComputerCard[CCount]);
      FindScore(ComputerCard[CCount], ComputerScore); CCount := CCount + 1;
      writeln('Computer''s card: ', ComputerCard[1]);
      writeln('Computer''s score: ', ComputerScore);
      repeat
         write('Do you want another card (y/n)? ');
         readln(Response);
         writeln;
         if (Response = 'y') or (Response = 'Y') then begin
         SelectCard(PlayerCard[PCount]);
         FindScore(PlayerCard[PCount], PlayerScore);
         writeln('Additional card for player: ', PlayerCard[PCount]);
         writeln('Player''s total score: ', PlayerScore);
         PCount := PCount + 1 end
      until (Response = 'n') or (Response = 'N') or (PlayerScore > 21);
      if PlayerScore > 21 then writeln('Player goes bust. Computer wins!')
      else begin
              repeat
                 SelectCard(ComputerCard[CCount]);
                 FindScore(ComputerCard[CCount], ComputerScore);
                 CCount := CCount + 1
              until ComputerScore >= 17;
              write('Additional card(s) for computer:');
              for i := 2 to CCount - 1 do
                 write(ComputerCard[i]:3); writeln;
              writeln('Computer''s total score: ', ComputerScore); writeln;
              if ComputerScore > 21 then writeln('Computer goes bust. Player wins!')
              else if ComputerScore > PlayerScore then writeln('Computer wins!')
                   else if ComputerScore < PlayerScore then writeln('Player wins!')
                        else writeln('It is a draw!')
           end;
      writeln;
      write('Do you want to continue (y/n)? ');
      readln(Response); writeln
   until (Response = 'n') or (Response = 'N');
   readln
end.

