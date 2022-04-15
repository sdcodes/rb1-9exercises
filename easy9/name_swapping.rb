def swap_name(string)
  split_string = string.split
  "#{split_string[1]}, #{split_string[0]}"
end 

p swap_name('Joe Roberts')