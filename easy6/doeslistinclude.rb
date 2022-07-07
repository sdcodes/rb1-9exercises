def does_include?(array, value)
  items_in_array = array.select {|item| item == value }
  items_in_array.empty? ? false : true
end 

# OR OTHER WAY

def included?(array, value)
  array.any? {|item| item == value}
end 

# OTHER WAY

def include?(original_array, value)
  includes = nil
  original_array.each do |num|
   includes = true if num == value
  end 
  includes == true ? true : false
end 

# OTHER WAY
def included?(array, num)
  array.each do |n|
    return true if n == num
  end 
  false
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