def does_include?(array, value)
  items_in_array = array.select {|item| item == value }
  items_in_array.empty? ? false : true
end 
  
p does_include?([1,2,3,4,5], 3) == true
p does_include?([1,2,3,4,5], 6) == false
p does_include?([], 3) == false
p does_include?([nil], nil) == true
p does_include?([], nil) == false

# input: array & value
# output: boolean
# iterate over array - compare individual chr w/ value
#if match, return false