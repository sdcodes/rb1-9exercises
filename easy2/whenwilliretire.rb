puts "What is your age?"
current_age = gets.chomp.to_i

puts "At what age would you like to retire?" 
retire_age = gets.chomp.to_i

years_remaining = retire_age - current_age
retirement_year = Time.now.year + years_remaining

puts "It's #{Time.now.year}. You will retire in #{retirement_year}."
puts "You have only #{years_remaining} years of work to go!"

# OR

puts "What is your age?"
age = gets.chomp.to_i

puts "At what age would you like ot retire?"
retire_age = gets.chomp.to_i

current_year = Time.now.year
years_left = retire_age - age
retirement_year = current_year + years_left


puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{years_left} years of work to go!"
