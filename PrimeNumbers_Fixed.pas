program PrimeNumbers;
var primes : array [0..999] of integer; count, i, n : integer;
begin
  writeln('A table of the first 1000 prime numbers');
  writeln;
  writeln('--------------------------------------------------');

  count := 0;
  n := 2;
  while count < 1000 do
  begin
    i := 0;
    while (i < count) and not (n mod primes[i] = 0) do
    begin
      i := succ(i);
    end;
    if i >= count then
    begin
      primes[count] := n;
      count := succ(count);
    end;
    n := succ(n);
  end;

  for i := 0 to 99 do
  begin
    writeln(primes[i*10]:5,
            primes[i*10+1]:5,
            primes[i*10+2]:5,
            primes[i*10+3]:5,
            primes[i*10+4]:5,
            primes[i*10+5]:5,
            primes[i*10+6]:5,
            primes[i*10+7]:5,
            primes[i*10+8]:5,
            primes[i*10+9]:5);
  end;

  readln
end.


