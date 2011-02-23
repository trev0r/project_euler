#A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#
#Find the largest palindrome made from the product of two 3-digit numbers.
max = 0
100.upto(999) {|x|
    x.upto(999) {|y|
        product = x*y
        max = [product,max].max if ( product.to_s == product.to_s.reverse )
        }
}
puts max
