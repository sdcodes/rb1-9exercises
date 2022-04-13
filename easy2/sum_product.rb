
loop do 
puts "Please enter an integer greater than 0:"
  num = gets.chomp.to_i
  if num < 1
   puts "The number needs to be greater than 0."
   break
  end 
  
puts "Enter 's' to compute the sum, 'p' to compute the product."
  product_or_sum = gets.chomp
  invalid = "abcdefghijklmnoqrtuvwxyz"
  if product_or_sum.start_with?(invalid)
   puts "Please provide a valid input."
  end 

if product_or_sum.downcase.start_with?('s')
  total_sum = (1..num).to_a.sum
  puts "The sum of the integers between 1 and #{num} is #{total_sum}."
elsif product_or_sum.downcase.start_with?('p')
  total_product = (1..num).inject(:*)
  puts "The product of the integers between 1 and #{num} is #{total_product}."
elsif product_or_sum
end
puts "Do you wish to try another number? (y/n)."
  play_again = gets.chomp.downcase
  
break unless play_again.start_with?("y") 

end 