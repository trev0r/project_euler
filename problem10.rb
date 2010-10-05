#By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
#What is the 10001st prime number?
n = 2000000
k = 0
p = 2
primes = (2..n).to_a 
while(p**2 <= n)
    primes.delete_if{|val| val%p == 0 && val != p}
    k += 1
    p = primes[k]
end
puts primes.inject(0){|sum,val| sum +=val} 


