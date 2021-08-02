function isPrime(n)
  if n == 1 then
    return false
  elseif n == 2 then
    return true
  end
  
  -- check if divisible by numbers till square root of n
  for i = 2, n^(1/2), 1
  do
    -- if divisible, it's not prime
    if (n % i) == 0 then
      return false
    end
  end
  -- not divisible by any number except 1 and itself, so it's prime
  return true
end

-- take input from user
io.write("Enter N: ")
n = io.read("*number")

-- count how many primes you have
c = 0
i = 1
-- keep trying until you get the nth prime
while (true)
do
  -- if found, exit loop and print value
  if c == n then
    print(i-1)
    break
  end
 
  -- incrment count
  if isPrime(i) then
    c = c + 1
  end

  -- increment the iterator
  i = i + 1
end
