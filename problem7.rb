#By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
#What is the 10001st prime number?
def checkPrime(p)
    return false if (p%2 == 0 || p%3 == 0)
    k=1
    while (6*k-1 <= Math.sqrt(p).ceil) do 
        return false if (p%(6*k-1) == 0 ||  p%(6*k+1) == 0)
        k+=1
    end
    return true
end

n = 10001
foundPrimes = 2 #for 2 and 3
k = 2
while foundPrimes != n do
    foundPrimes+=1 if checkPrime(k)
    k+=1
end

puts k-1



