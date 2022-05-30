
def show_multiplicative_average(array_of_integers)
  result_in_string = (array_of_integers.inject(:*) / array_of_integers.count.to_f).to_s
  result = sprintf("%#.3f", result_in_string).to_f
  puts "The result is #{result}"
end 

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667


# input: array w/ integers
# output: integer. it is result of:
#  1) multiplying all integers in array
#  2) divide product by count of entries in array
#  3) result of which needs 3 decimal places
# use inject to multiply number. total should be divided by array.count. 


#OTHER METHOD

def show_multiplicative_average(array)
  total = (array.inject(:*) / (array.size).to_f)
  puts "The result is #{sprintf("%#.3f", total)}."
end 
