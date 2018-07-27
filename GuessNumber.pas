program NumberGuess;
var ans, guess : integer;
begin
  Randomize;
  writeln('****  Number Guessing Game  ***');
  writeln('I have a number between 1 and 100. Please try to guess it.');
  ans := random(100) + 1;
  repeat
    writeln;
    write('What is the number? ');
    readln(guess);
    if guess > ans then writeln('It is too large. Please try again.')
    else if guess < ans then writeln('It is too small. Please try again.');
  until guess = ans;
  writeln('Congratulation! You are right.');
  readln
end.
