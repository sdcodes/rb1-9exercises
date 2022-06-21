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


#OTHER WAY

def triangle(a1, a2, a3)
  all_angles = [a1, a2, a3]. sort
  return :invalid if all_angles.sum != 180 ||
                     all_angles.any? {|angle| angle <= 0}
  if all_angles.one? {|angle| angle == 90}
    :right
  elsif all_angles.all? {|angle| angle < 90}
    :acute
  else
    :obtuse
  end 
end


p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
