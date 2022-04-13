def signed_integer_to_string(integer)
  if integer.negative?
   stringed_integer = (-integer).digits.join.reverse
   "-" + stringed_integer
  elsif integer.zero?
   integer.digits.join.reverse
  else 
    stringed_integer = integer.digits.join.reverse
   "+" + stringed_integer
 end 
end 

p signed_integer_to_string(4321) #== '+4321'
p signed_integer_to_string(-123) #== '-123'
p signed_integer_to_string(0) #== '0'