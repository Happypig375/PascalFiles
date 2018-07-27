var
a : integer;
begin
       readln(a);
       writeln('You entered ', a div 3600, ':', (a mod 3600) div 60, ':', (a mod 3600) mod 60);
       readln;
end.
