def triangle(d1, d2, d3)
  total_degrees = [d1, d2, d3].sort
  return :invalid if total_degrees.include?(0) ||
                     total_degrees.sum != 180
  if total_degrees.include?(90)
    :right
  elsif total_degrees[0] > 90 || total_degrees[1] > 90 || total_degrees[2] > 90
    :obtuse
  elsif total_degrees[0] < 90 && total_degrees[1] < 90 && total_degrees[2] < 90
    :acute
  end 
end 

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
