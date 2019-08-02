program SeatingPlan;

uses Crt;

const
  num_stud = 40;

var
  classno : array[1..num_stud] of integer;
  name : array[1..num_stud] of string[25];
  sex : array[1..num_stud] of char;
  height : array[1..num_stud] of integer;
  seat : array[1..5,1..8] of integer;
  choice : char;

procedure read_data;
var
  filename : string;
  f : text;
  i : integer;
begin
  clrscr;
  write('Enter the filename of the class file: ');
  readln(filename);
  assign(f, filename);
  reset(f);
  for i := 1 to num_stud do
    begin
      readln(f, classno[i]);
      readln(f, name[i]);
      readln(f, sex[i]);
      readln(f, height[i]);
    end;
  close(f)
end;

procedure display_student_list;
var
  i : integer;
begin
  clrscr;
  writeln('No.':4, '  ', 'Name', '':21, 'Sex', '   ', 'Height');
  writeln('===========================================');
  for i := 1 to num_stud do
    writeln(classno[i]:3, '   ', name[i], '':25-length(name[i]), sex[i]:2, height[i]:8);
  writeln('===========================================');
  writeln;
  write('<<< Press <Enter> to return. >>>');
  readln
end;

{To swap the records i and j in the parallel arrays}
procedure swap(i, j : integer);
var
  tmp_classno : integer;
  tmp_name : string[25];
  tmp_sex : char;
  tmp_height : integer;
begin
  tmp_classno := classno[i];
  tmp_name := name[i];
  tmp_sex := sex[i];
  tmp_height := height[i];
  classno[i] := classno[j];
  name[i] := name[j];
  sex[i] := sex[j];
  height[i] := height[j];
  classno[j] := tmp_classno;
  name[j] := tmp_name;
  sex[j] := tmp_sex;
  height[j] := tmp_height;
end;

procedure sort_by_classno;
var
  i, j : integer;
begin
  for i := 1 to num_stud - 1 do
    for j := 1 to num_stud - i do
      if classno[j] > classno[j+1] then
        swap(j,j+1);
  display_student_list
end;

procedure sort_by_heignt;
var
  i, j : integer;
begin
  for i := 1 to num_stud - 1 do
    for j := 1 to num_stud - i do
      if height[j] > height[j+1] then
        swap(j,j+1);
  display_student_list
end;

{To shuffle 1000 pairs of randomly selected records in the arrays}
procedure sort_randomly;
var
  i, k, p : integer;
begin
  randomize;
  for i := 1 to 500 do
    begin
      k := random(num_stud)+1;
      p := random(num_stud)+1;
      swap(k,p)
    end;
  display_student_list
end;

procedure alternate_boy_girl;
var
  i, j, k : integer;
  tmp_classno : integer;
  tmp_name : string[250];
  tmp_sex : char;
  tmp_height : integer;
begin
  for i := 2 to num_stud do
    begin
      j := i;
      while sex[j] = sex[i-1] do
        j := j + 1;
      if j <= num_stud then
        begin
          tmp_classno := classno[j];
          tmp_name := name[j];
          tmp_sex := sex[j];
          tmp_height := height[j];
          for k := j downto i+1 do
            begin
              classno[k] := classno[k-1];
              name[k] := name[k-1];
              sex[k] := sex[k-1];
              height[k] := height[k-1];
            end;
          classno[i] := tmp_classno;
          name[i] := tmp_name;
          sex[i] := tmp_sex;
          height[i] := tmp_height;
        end
    end;
    display_student_list
end;

procedure assign_classroom_seat;
var
  i, j, k : integer;
begin
  k := 1;
  for i := 1 to 5 do
    for j := 1 to 8 do
      begin
        seat[i,j] := classno[k];
        k := k + 1
      end
end;

procedure classroom_seating_plan;
var
  i, j : integer;
begin
  assign_classroom_seat;
  clrscr;
  writeln('          Classroom Seating Plan           ');
  writeln('          ======================           ');
  writeln(' ----------------------------------------- ');
  for i := 5 downto 1 do
    begin
      for j := 1 to 8 do
        write(' | ', seat[i,j]:2);
      writeln(' | ');
      writeln(' ----------------------------------------- ');
    end;
  writeln('            ------------------              ');
  writeln('            | Teacher''s Desk |             ');
  writeln('            ------------------              ');
  writeln;
  write('<<< Press <Enter> to return. >>>');
  readln
end;

procedure special_room_seating_plan;
var
  i, j, k : integer;
begin
  clrscr;
  k := 1;
  for i := 1 to 5 do
    begin
      writeln('Table ', i, ' :');
      writeln('===========================================');
      writeln('No.':4, '  ', 'Name', '':21, 'sex', '   ', 'Height');
      writeln('===========================================');
      for j := 1 to 8 do
        begin
          writeln(classno[k]:3, '   ', name[k], '':25-length(name[k]), sex[k]:2, height[k]:8);
          k := k + 1
        end;
      writeln('===========================================');
      writeln
    end;
  write('<<< Press <Enter> to return. >>>');
  readln
end;

begin  { Main program }
  read_data;
  repeat
    clrscr;
    writeln('Seating Plan');
    writeln('============');
    writeln;
    writeln('***************************************************');
    writeln('(1) Sort by class number');
    writeln('(2) Sort by height (ascending)');
    writeln('(3) Sort randomly');
    writeln('(4) Arrange boys and girls in alternate seats');
    writeln('(5) Display name list');
    writeln('(6) Display classroom seating plan');
    writeln('(7) Display seating plan of special room (5 tables)');
    writeln('(8) Read another class');
    writeln('(9) Quit');
    writeln('***************************************************');
    writeln;
    write('Enter your choice: ');
    readln(choice);
    writeln;
    case choice of
      '1' : sort_by_classno;
      '2' : sort_by_heignt;
      '3' : sort_randomly;
      '4' : alternate_boy_girl;
      '5' : display_student_list;
      '6' : classroom_seating_plan;
      '7' : special_room_seating_plan;
      '8' : read_data;
    end;
  until choice = '9'
end.









