puts "Enter the 1st number:"
  first_num = gets.chomp.to_i
  
puts "Enter the second number:"
  second_num = gets.chomp.to_i
  
puts "Enter the third number:"
  third_num = gets.chomp.to_i
  
puts "Enter the fourth number:"
  fourth_num = gets.chomp.to_i

puts "Enter the fifth number:"
  fifth_num = gets.chomp.to_i
  
puts "Enter the last number:"
  sixth_num = gets.chomp.to_i

array = [first_num, second_num, third_num, fourth_num, fifth_num] 

if array.include?(sixth_num)
  puts "The number #{sixth_num} appears in #{array}." 
else
  puts "The number #{sixth_num} does not appear in #{array}."
end 



#input: 6 numbers
#output: 6th number one of the fifth numbers previously provided?
#receive 5 numbers
#have the five numbers added to array
#check to see if array includes the 6th number
