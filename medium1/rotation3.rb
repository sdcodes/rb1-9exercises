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


def max_rotation(integer)
  index = (integer.to_s.chars.count)
  loop do 
    integer = rotate_rightmost_digits(integer, index)
    index -= 1
    break if index <= 1
  end 
  integer
end
  
  
p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845