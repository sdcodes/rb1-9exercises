require 'pry'
def max_rotation(integer)
  index = (integer.to_s.chars.count)
  if index == 1
    integer
  else 
    loop do 
      stringed_array = integer.to_s.chars
      end_part = stringed_array[(-(index - 1)).. -1]
      integer = stringed_array[0...(-index)].push(end_part).push(stringed_array[-index]).flatten.join.to_i
      index -= 1
      break if index <= 1
    end
  end
  integer
end
  
p max_rotation(735291) #== 321579
p max_rotation(3) #== 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
p max_rotation(735200) 