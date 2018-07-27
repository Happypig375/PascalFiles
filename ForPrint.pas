var i, j, k : integer;
begin
  for i := 1 to 5 do
    begin
      write('@');
      for j := 1 to i do
        begin
          write('#');
          for k := 1 to j do
            write('*':2)
        end;
      writeln('/')
    end;
    readln
end.
