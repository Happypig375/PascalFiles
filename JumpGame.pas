program JumpGame;
uses crt;
type
 Point = record
  x, y : integer;
 end;
 Region = record
  p1, p2 : Point;
 end;
function contains(r : Region; p : Point) : boolean;
var x : integer;
begin
  contains := r.p1.x
      case p.y of
        r.p1.y..r.p2.y : contains := true;
      end;
  end;
end;
const
 max_x = 35;
 max_y = 20;
var
 i : Point;
 player : Region;
 obstacles : array[0..9] of Region;
 key : char;
begin
 Randomize;
 player.x := 3;
 player.y := max_y-1;
 repeat
  {draw stage}
  clrscr;
  for i.y := 0 to max_y-1 do
   begin
    for i.x := 0 to max_x do
     begin
      {for each 'pixel'...}
      if (i.x = player.x) and (i.y = player.y) then write('O') {the player}
      else write(' '); {air}

     end;
    writeln;
   end;
   for i.x := 0 to max_x do write('-'); {the ground}
   writeln;

   if keypressed then
    begin
     Dec(player.y);
     case readkey of
      #0 : begin
            ch:=ReadKey; {Read ScanCode}
            case ch of
             #75 : WriteLn('Left');
             #77 : WriteLn('Right');
            end;
          end;
      {#27 : WriteLn('ESC'); }
     end;
    end;

   delay(200);
 until false;
end.
