program NIM;
var
    NIMstones : integer;  {sotres number of stones left}
    endgame : Boolean;    {TRUE indicates end of game}
    turn : string;        {stores player's or computer's turn}

procedure PlayerTurn(var stones : integer);
{player turn: input number of stones from player}
var
    take : integer;
begin
    writeln;
    writeln('Player Turn'); 
    write('Input number of stones to be taken: ');
    readln(take);
    while (take < 1) or (take > 3) or (take > stones) do
    begin
        writeln('Invalid input. Please re-enter.');
        write('Input number of stones to be taken: ');
        readln(take);
    end;
    stones := stones - take;
    writeln('Stones left = ', stones)
end;    {PlayerTurn}

procedure ComputerTurn(var stones : integer);
{computer's turn: take 1 to 3 stones}
var
    take : integer;
begin
    writeln;
    writeln('Computer Turn');
    repeat
        take := random(3)+1;
    until take <= stones;
    writeln('Computer takes ', take);
    stones := stones - take;
    writeln('Stones left = ', stones)
end;    {ComputerTurn}

begin {main program}
    randomize;
    endgame := FALSE;
    {generate stones between 15 and 30}
    NIMstones := random(16)+15;
    turn := 'player';
    writeln('There are ', NIMstones, ' stones.');
    repeat
        if turn = 'player'
            then begin
            PlayerTurn(NIMstones);
            turn := 'computer'
            end
        else begin
             ComputerTurn(NIMstones);
             turn := 'player'
             end;
        if NIMstones = 0
            then endgame := TRUE
    until endgame;
    if turn = 'computer'
        then writeln('Computer wins!')
        else writeln('Player wins!')
    ;readln
end.
