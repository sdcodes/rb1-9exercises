

def xor?(operand_one, operand_two)
  
  if operand_one and !operand_two
   return true 
  elsif operand_one and operand_two
    return false
  elsif !operand_one and operand_two 
    return true
  else !operand_one and !operand_two
    return false
  end
end 
  
p xor?(5.even?, 4.even?)
p xor?(5.odd?, 4.odd?) 
p xor?(5.odd?, 4.even?) 
p xor?(5.even?, 4.odd?) 

# input: two arguments
# otput: boolean - 
#   true if one true
#   false otherwise
# two arguments given
# find if first argument is truthy or falsey
# find out if second argument is truthy or falsey
# if 1st argument == truthy and second argument == truthy => false
# if 1st argument == truthy and second argument == falsey => true
# if 1st argument == falsey and secondargument falsey => false
# if 1st argument == falsey and second argument truthy => true
  

