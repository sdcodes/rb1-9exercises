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


# OTHER WAY

def substrings(original_string)
  starting_index = 0
  ending_index = original_string.size + 1
  new_string_array = []
  loop do 
   new_string_array << leading_substrings(original_string[starting_index, ending_index])
   starting_index += 1
   break if starting_index == original_string.size
  end
  new_string_array.flatten
end

p substrings('abcde') 