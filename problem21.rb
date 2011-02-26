#Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
#If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.
#
#For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.
#
#Evaluate the sum of all the amicable numbers under 10000.

class Integer
  def divisors
    1.upto(Math.sqrt(self).floor).inject([]){|divs, i| 
      divs << [i,self/i] if (self%i).zero?
      divs
    }.flatten.sort
  end
end

def sum_proper_divisors(i)
  i.divisors.reduce(:+)-i
end

n= 10000

ds = Array.new(n,0)
1.upto(n){|i| ds[i] = sum_proper_divisors(i)}
p 1.upto(n).select{|i| ds[i] < n and i != ds[i] and i == ds[ds[i]]}.reduce(:+) 
 
  



