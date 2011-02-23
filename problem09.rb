#Find only pythagorean triplem where a+b+c=1000
c = 0
x = y = (1..10000)
x.each { |a|
    y.each {|b|
        c = 1000 - a - b
        p a*b*c if (a*a +b*b == c*c && c > 0)

        
    }
}
       

