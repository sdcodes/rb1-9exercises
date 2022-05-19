def sum(integer)  
  array = integer.digits
  totalsum = array.sum 
end 
 
 
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

#input: integer
#output: sum of integer's digits
#must split digits
#then add them together
#example: sum(23) 

#OTHER WAY

def sum(integer)
 array_of_integers = integer.to_s.chars.map {|n| n.to_i}
 array_of_integers.sum
end 
  # 23 -> 2 3 -> 2 + 3 