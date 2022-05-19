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

# OR 

all_num = [] 

puts "Enter the 1st number:"
first_num = gets.chomp.to_i
all_num << first_num

puts "Enter the 2nd number:"
second_num = gets.chomp.to_i 
all_num << second_num

puts "Enter the 3rd number:"
third_num = gets.chomp.to_i
all_num << third_num

puts "Enter the 4th number:"
fourth_num = gets.chomp.to_i
all_num << fourth_num

puts "Enter the 5th number:"
fifth_num = gets.chomp.to_i
all_num << fifth_num

puts "Enter the last number:"
last_num = gets.chomp.to_i

if all_num.include?(last_num)
  puts "The number #{last_num} appears in #{all_num}."
else
  puts "The number #{last_num} does not appear in #{all_num}."
end
