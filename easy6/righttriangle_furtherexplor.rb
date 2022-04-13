def triangle_two(integer)
  total_stars = "*"
loop do 
    puts total_stars
    total_stars += "*"
    break if total_stars.size > integer
  end 
end 
 triangle_two(5)
 triangle_two(9)


require 'pry'
def triangle_three(integer)
  total_stars = "*" * integer
  loop do 
    puts total_stars
    total_stars.chop!
    break if total_stars.size < 1
  end 
end
triangle_three(5)
triangle_three(9)
 
 
def triangle_four(integer)
  total_stars = "*" * integer
  loop do 
    puts total_stars.rjust(integer)
    total_stars.chop!
    break if total_stars.size < 1
  end
end 

triangle_four(5)
triangle_four(9)
 