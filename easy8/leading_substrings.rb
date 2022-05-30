def leading_substrings(string)
  array = []
  range_num = 1
  loop do 
    array << string[0, range_num]
    range_num += 1
    break if range_num >= (string.size + 1)
  end 
  array
end 

p leading_substrings('abc')
p leading_substrings('a') #== ['a']
p leading_substrings('xyzzy') #== ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
