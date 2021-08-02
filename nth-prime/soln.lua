function isPrime(n)
  if n == 1 then
    return false
  elseif n == 2 then
    return true
  end
  
  for i = 2, n^(1/2), 1
  do
    if (n % i) == 0 then
      return false
    end
  end
  return true
end

io.write("Enter N: ")
n = io.read("*number")

c = 0
i = 1
while (true)
do
  if c == n then
    print(i-1)
    break
  end
  
  if isPrime(i) then
    c = c + 1
  end

  i = i + 1
end
