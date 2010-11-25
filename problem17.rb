#If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.
#
#If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?
require "rubygems"
require "linguistics"
Linguistics::use(:en)
p (1..1000).inject(0){|count, number| count += number.en.numwords.delete("-").gsub(/ /,'').size }
