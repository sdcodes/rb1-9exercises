require 'pry'
def rotate_array(array)
  new_array = []
  array.each do |num|
  new_array << num
end
new_array.push(new_array[0]).shift
new_array
end 

def rotate_string(string)
  string_array = string.chars
  rotated_string_array = string_array[1..-1] << string_array[0]
  rotated_string_array.join
end 

p rotate_string("chances are we dance") 
p rotate_string("abc") 
p rotate_string('a') 

p x = "pathetic"
p rotate_string(x)   # => true
p x == "pathetic"   

def rotate_integers(integers)
  new_array = integers.to_s.chars
  rotate_array(new_array).join.to_i
end 

p rotate_integers(12343)
p rotate_integers(323)
p rotate_integers(1)

p x = 432
p rotate_integers(x)
p x = 432