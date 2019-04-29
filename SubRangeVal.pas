{$MACRO ON}
{$define E:=v}
{$R+}
program SubRangeVal;
var v : 0..100; s : string; code : integer; ss : set of char;
begin
  ss := ['a', 'b', 'c'];
  write('Enter an integer (0 - 100): ');
  readln(s);
  val(s, v, code);
  writeln(v);
  readln;
  if not v in [1..20] then writeln('Not In') else writeln('In');
  E := 4;
  readln
end.
