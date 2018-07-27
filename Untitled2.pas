{
Description: space fighting game 
}

program game; 
uses crt; 
var x,y,position,a,b,d,enemy,bullet,n,life:integer; 
c:char; 
wrd:array[1..14] of char; 
procedure data; 
begin 
clrscr; 
textmode(co80); 
for n:=1 to 1000 do 
begin 
a:=random(80); 
b:=random(25); 
d:=random(13); 
textcolor(d); 
gotoxy(a,b); 
writeln('.'); 
end; 
gotoxy(1,8); 
textcolor(14); 
Writeln('The year is 4090 A.D ......':54);delay(500); 
writeln('The Dark Force from planet Xoro has wreaked havoc in the universe......':77);delay(500); 
writeln('You''r mission is to command the Rebel forces and Save the universe...':77);delay(500); 
writeln('You fly an Apache equipped with caesium lasers ....':63);delay(500); 
writeln('the most powerful weapon in the universe ...':57);delay(500); 
writeln('You are the only person that stands between the Dark Force and...':71); 
writeln('the rest of the Universe....':52); 
gotoxy(27,20); 
textcolor(11); 
writeln('Get ready for take off'); 
delay(1200); 
for n:=100 to 900 do 
begin 
sound(n); 
delay(10); 
nosound; 
end; 
end; 


procedure start; 
begin 
clrscr; 
textmode(co40); 
textcolor(4); 
gotoxy(14,12); 
delay(900); 
for n:=1 to 12 do 
begin 
write(wrd[n]); 
delay(50); 
sound(300); 
delay(100); 
nosound; 
end; 
delay(1000); 
textmode(co80); 
textcolor(11); 
gotoxy(20,10); 
writeln('Hit enter to start the game'); 
gotoxy(20,11); 
writeln('Hit space for help'); 
c:=readkey; 
if c=#13 then data; 
if c=#32 then 
begin 
textmode(co80); 
textcolor(4); 
gotoxy(20,10); 
writeln('To quit from the game press Esc'); 
gotoxy(20,11); 
writeln('To pause the game press P'); 
gotoxy(20,12); 
textcolor(11); 
writeln('To move your ship right press ', #26 ); 
gotoxy(20,13); 
textcolor(11); 
writeln('To move your ship left press ',#27); 
gotoxy(20,14); 
textcolor(4); 
writeln('To shoot press Z'); 
gotoxy(20,20); 
delay(1000); 
textcolor(20); 
writeln('SO SAY YOUR PRAYERS AND HIT ENTER'); 
readln; 
data; 
end; 
end; 

procedure hit; 
begin 
gotoxy(10,2); 
writeln('Take that..Heee...Heee':20); 
delay(550); 
randomize; 
repeat 
n:=random(80); 
x:=n; 
y:=1; 
until (n>=25) and (n<=55) ; 
enemy:=enemy-1; 
sound(500); 
delay(20); 
nosound; 
sound(550); 
delay(20); 
nosound; 
sound(600); 
delay(20); 
nosound; 
end; 

procedure dead; 
begin 

sound(1000); 
delay(400); 
nosound; 
textmode(co40); 
textcolor(9); 
gotoxy(15,10); 
writeln('GAME OVER'); 
delay(1500); 
readkey; 
end; 


procedure win; 
begin 
clrscr; 
textcolor(11); 
gotoxy(1,10); 
writeln('Congratulations........':51); 
writeln('You have saved the Universe from chaos and destruction..':66); 
writeln('As a reward for your courage and guts the Universe has ':66); 
writeln('made you its supreme Commander...':55); 
for n:=1 to 6 do 
begin 
sound(1100); 
delay(100); 
nosound; 
sound(1000); 
delay(80); 
nosound; 
sound(900); 
delay(60); 
nosound; 
sound(800); 
delay(40); 
nosound; 
end; 
readln; 
end; 


BEGIN 
{read the title} 
wrd[1]:='S';wrd[2]:='A';wrd[3]:='T';wrd[4]:='A';wrd[5]:='N';wrd[6]:='I'; 
wrd[7]:='C' ;wrd[8]:=' ';wrd[9]:='W';wrd[10]:='A';wrd[11]:='R';wrd[12]:='S'; 

start; 
{initialize all the values} 
x:=40; 
y:=1; 
position:=45; 
enemy:=20; 
bullet:=0; 
life:=10; 


repeat 
if y>23 then y:=1; 
clrscr; 
for n:=1 to 100 do {creates the flickering dots on the screen} 
begin 
randomize; 
a:=random(78); 
b:=random(25); 
textcolor(15); 
gotoxy(a,b); 
writeln('.'); 
end; 

textcolor(11); 
gotoxy(59,2); 
writeln('Dark Force=',enemy); 
gotoxy(59,3); 
for n:=1 to life do {displays the your status in terms of those little hearts} 
begin 
textcolor(4); 
write(#3); 
end; 

textcolor(1);{creates the enemy} 
gotoxy(x,y); 
writeln('( )'); 
gotoxy(x,y+1); 
textcolor(20); 
writeln(' o o'); 
gotoxy(x,y+2); 
textcolor(11); 
writeln(' O '); 

textcolor(14); {creates the gun} 
gotoxy(position,25); 
writeln(#15); 

delay(60); 
y:=y+1; 

if keypressed then {check for keyboard input} 
begin 
c:=readkey; 
if c=#27 then halt; 
if c='p' then readln; 
if c= 'z' then 
begin 
sound(900);delay(30);nosound; 
if position=(x+2) then hit; 
end; 

if c=#0 then 

begin 

c:=readkey; 
if ord(c)=77 then 
position:=position+1; 
if ord(c)=75 then 
position:=position-1; 
end; 

end; 
if y=23 then life:=life-1; 
until (enemy=0) or (life=0); 
if (enemy=0) and (life>0) then win; 
if (life=0) then dead; 

END. 



			
