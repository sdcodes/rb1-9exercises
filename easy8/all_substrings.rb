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

def substrings(string)
  index = 0
  new_array = []
  loop do 
    loop do 
     new_array << leading_substrings(string[index, string.size])
      break     
    end
    index += 1
    break if index >= string.size
  end 
  new_array.flatten
end 

p substrings('abcde') 