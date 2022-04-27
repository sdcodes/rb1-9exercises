def sum_square_difference(integer)
  sum_of_squares = []
  square_of_sum = ((1..integer).sum)**2
  1.upto(integer) {|n| sum_of_squares << n**2}
 square_of_sum - sum_of_squares.sum
  
end 


p sum_square_difference(3)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150