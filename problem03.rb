# Greatest Prime Factor of 600851475143
num = 600851475143
factor = 2
while (num != 1 )
    num /= factor while (num%factor).zero?
    factor += 1
end 
puts factor-1
