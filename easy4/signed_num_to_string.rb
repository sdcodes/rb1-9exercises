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

# OTHER WAY
def signed_integer_to_string(integer)
  digit_hash = {0=>"0", 1=>"1", 2=>"2", 3=>"3", 4=>"4", 5=>"5", 
                6=>"6", 7=>"7", 8=>"8", 9=>"9"} 
  stringed_num = integer.abs.digits.reverse
  stringed_num.map! {|num| digit_hash[num]}
  if integer.negative?
    "-" + stringed_num.join
  elsif integer.positive?
    "+" + stringed_num.join
  else 
    stringed_num.join
  end 
end 


p signed_integer_to_string(4321) #== '+4321'
p signed_integer_to_string(-123) #== '-123'
p signed_integer_to_string(0) #== '0'