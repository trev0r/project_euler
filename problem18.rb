#By starting at the top of the triangle below and moving to adjacent numbers on the row below, the maximum total from top to bottom is 23.
pyramid = "75 95 64 17 47 82 18 35 87 10 20 04 82 47 65 19 01 23 75 03 34 88 02 77 73 07 63 67 99 65 04 28 06 16 70 92 41 41 26 56 83 40 80 70 33 41 48 72 33 47 32 37 16 94 29 53 71 44 65 25 43 91 52 97 51 14 70 11 33 28 77 73 17 78 39 68 17 57 91 71 52 38 17 14 91 43 58 50 27 29 48 63 66 04 68 89 53 67 30 73 16 69 87 40 31 04 62 98 27 23 09 70 98 73 93 38 53 60 04 23"
pyramid = pyramid.split(/ /).map{|s| s.to_i}

pyramid2=""
fileName  = "triangle.txt"
inputFile = File.new(fileName, "r")
while(line = inputFile.gets)
  line.chomp!
  pyramid2 += line+" "
end
pyramid2 =  pyramid2.split(/ /).map{|s| s.to_i}

def max_path(pyramid)
levels = []
count = 1
while( not pyramid.empty?)
  level = []
  count.times{ level << pyramid.shift}
  levels << level
  count +=1
end
(0..levels.size-2).to_a.reverse.each{|i| levels[i].each_index{|x| levels[i][x] += [levels[i+1][x],levels[i+1][x+1]].max}}
p levels[0][0]
end

max_path(pyramid2)
