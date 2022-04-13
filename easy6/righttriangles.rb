require 'pry'
def triangle(integer)
  total_stars = "*"
loop do 
    puts total_stars.rjust(integer)
    total_stars += "*"
    break if total_stars.size > integer
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