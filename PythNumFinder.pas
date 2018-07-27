program PythNumFinder;
uses crt;
function stop : boolean;
begin
  write('Do you want to continue (y/n)? ');
  if readkey = 'n' then begin writeln('n'); stop := true; readln end
  else begin writeln('y'); stop := false; writeln end
end;
function spaced(int : integer) : string;
var intStr : string;
begin
  str(int, intStr);
  spaced := intStr + stringOfChar(' ', 3 - length(intStr))
end;
var a, b, i, first, last : integer;
begin
  repeat
    repeat
      write('Starting integer for a and b (1 to 120)? ');
      readln(first);
    until (first >= 1) and (first <= 120);
    repeat
      write('Ending integer for a and b (1 to 120)? ');
      readln(last);
    until (last >= 1) and (last <= 120);
    writeln;
    i := 0;
    for a := first to last do
      for b := a to last do
        if abs(frac(sqrt(a * a + b * b))) < 1e-75 then
        begin
          i := succ(i);
          writeln('Pythagoras numbers set ', i, ' is : ', spaced(a), spaced(b), round(sqrt(a * a + b * b)));
        end;
    if i = 0 then writeln('There is no solution')
    else writeln('No more solution');
  until stop
end.
