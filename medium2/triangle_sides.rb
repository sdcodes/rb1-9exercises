def triangle(s1, s2, s3)
  all_sides = [s1, s2, s3].sort
  return :invalid if all_sides.include?(0) || 
                     all_sides[0] + all_sides[1] < all_sides[2]
  if all_sides == all_sides.shuffle
    :equilateral
  elsif all_sides[1] == all_sides[0] || all_sides[1] == all_sides[2]
    :isosceles
  else 
    :scalene
  end 
end 

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid