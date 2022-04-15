def rotate_rightmost_digits(integer, last_n)
  stringed_array = integer.to_s.chars
  begin_part = stringed_array[0...(-last_n)]
  end_part = stringed_array[(-(last_n - 1))..stringed_array.count - 1]
  if last_n == 1
    begin_part.push(stringed_array[-last_n]).flatten.join.to_i
  else
    begin_part.push(end_part).push(stringed_array[-last_n]).flatten.join.to_i
  end 
end 




p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917