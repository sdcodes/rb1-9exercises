def triangle(integer)
  total_stars = "*"
loop do 
    puts total_stars.rjust(integer)
    total_stars += "*"
    break if total_stars.size > integer
  end 
end 

#OTHER WAY

def triangle(integer)
  star = "*"
  1.upto(integer) do |num|
    puts (star * num).rjust(integer)
  end 
end 


 triangle(5)
 triangle(9)


#input: positive integer
#outpout: strings that show triangle
# in triangle: first line should have one star, each line, star.count increases 
# by one until start.count == integer
# loop through the one star, adding another star until total amount == integer given

#     *
#   **
#   ***
# ****
# *****


#OR METHOD:

def triangle(integer)
  tri = "*"
  index = 1
  integer.times do
    puts (tri * index).rjust(integer)
    index += 1
  end 
end 