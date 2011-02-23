#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#What is the smallest positive number that is eve nly divisible by all of the numbers from 1 to 20?          
divisors = (11..20).to_a.reverse
product = (2..20).inject(1){|prod, val| prod *= val}
p product
product = (2..20).inject(product){|prod,val| 
    prod /= val while divisors.all?{|d| prod%val == 0 && (prod/val)%d == 0 }
    prod
}
puts product


    
