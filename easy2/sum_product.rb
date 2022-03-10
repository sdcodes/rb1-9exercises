puts "Please enter an integer greater than 0:"
  number = gets.chomp.to_i
  
puts "Enter 's' to compute the sum, 'p' to compute the product."
  sum_or_product = gets.chomp
  
  def get_product(num)    
   (1..num).inject(:*)
  end
    
  
if sum_or_product == 's'
  puts "The sum of the integers between 1 and #{number} is #{(1..number).sum}."
elsif sum_or_product == 'p'
  puts "the product of the integers between 1 and #{number} is #{get_product(number)}."
else
  "Something went wrong. Try again."
end 