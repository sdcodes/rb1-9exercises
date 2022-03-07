def average(array)
  array_sum = array.sum
  array_sum.to_f / array.length
end 

puts average([1, 6]) == 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

#input: array of integers
#output: integer and average of all numbers
#array has numbers
#must add numbers 
#divide sum by amount of numbers
#stay in integer
=begin
[1, 5, 87, 45, 8, 8] sum = 154 / 6 = 25
array.sum = 154
array.sum / array.length
=end 