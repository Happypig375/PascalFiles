program PrimeNumbers;
type
  primes = record
    num : integer;
    prev : ^primes;
  end;
var
  p : primes;
  pi : ^primes;
  i, primecount : integer;
  isPrime : boolean;
procedure writechars(char : char; times : integer);
var j : integer;
begin
  for j := 1 to times do write(char);
end;
begin
  writeln('A table of the first 1000 prime numbers');
  writeln;
  writechars('-', 40);
  primecount := 0;
  i := 3;
  p.num := 2;
  New(pi);
  repeat
    pi^ := p;
    isPrime := true;
    while (isPrime = true) and (pi <> nil) do
    begin
      if pi^.num mod i = 0 then isPrime := false;
      pi := pi^.prev;
    end;
    if isPrime then
    begin
      New(p.prev);
      p.prev^ := p;
      p.num := i;
      primeCount := primeCount + 1;
    end;
 readln;
    i := succ(i);
  until primecount > 1000;


  pi^ := p;
  i := 1;
  while p.prev <> nil do
    begin
      write(pi^.num:4);
      pi := pi^.prev;
      i := i + 1;
      if i = 8 then
      begin
        writeln;
        i := 1;
      end;
    end;
  readln
end.


