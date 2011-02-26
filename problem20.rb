#Find the sum of the digits in the number 100!

class Integer
  def factorial
    (2..self).inject(1){|fact,i| fact*i}
  end
end

puts 100.factorial.to_s.split(//).inject(0){|sum,val| sum+ val.to_i}


