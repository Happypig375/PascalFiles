program DATA2008;
var
   Test1, Test2, I, Count: integer;
   Score, MaxScore, Sum: real;
   Num, MaxNum: string[4];
   fn: string;
   f: text;
begin
     write('File name? ');
     readln(fn);
     assign(f, fn);
     reset(f);
     MaxNum := '0000';
     MaxScore := 0;
     Count := 0;
     Sum := 0;
     while not eof(f) do begin
           readln(f, Num, Test1, Test2);
           Score := (Test1 + Test2) / 2;
           if Score > MaxScore then begin
              MaxScore := Score;
              MaxNum := Num;
           end;
           Sum := Sum + Score;
           Count := Count + 1;
     end;
     close(f);
     writeln('Overall mean score: ', Sum / Count:0:2);
     writeln('Highest average score: ', MaxScore:0:1);
     writeln('Student number of the best student: ', MaxNum);
     readln
end.

