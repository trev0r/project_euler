sum = 0
fib = [0,1]
while fib[1] < 4000000 do 
    fib.push(fib[0]+fib[1])
    fib.shift
    sum += fib[1] if fib[1]%2 == 0
end
puts sum



