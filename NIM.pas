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
    ......
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
    until take <= sontes;
    writeln('Computer takes ', take);
    stones := stones - take;
    writeln('Stones left = ', stones)
end;    {ComputerTurn}

begin { main program}
    randomize;
    endgame := ____________________;
    {generate stones between 15 and 30}
    NIMstones := ___________________;
    turn := _________________;
    writeln(_________________);
    repeat
        if turn = 'player'
            then begin
            PlayerTurn(NIMstones);
            turn := 'computer'
            end
        else ______________
        ________________
        ____________
        _______________
        _______________
        if NIMstones = _______
            thenb endgame := _______________
    until endgame;
    if turn = 'computer'
        then writeln('Computer wins!')
        else writeln('Player wins!')
end.
