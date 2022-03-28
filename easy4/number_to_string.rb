def integer_to_string(integer)
  new_array = []
  new_array << integer 
  new_array.join
end 

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'