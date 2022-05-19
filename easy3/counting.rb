puts "Please write word or multiple words:"
  answer = gets.chomp

num_of_character = answer.delete(" ").length

puts "There are #{num_of_character} characters in '#{answer}'"  


#input: word or words
#number - number of characters
#do not include spaces in number
#take word(s). remove any spaces. then add # of characters
#output number of characters

# OR OTHER WAY

puts "Please write word or multiple words:"
answer = gets.chomp

words_no_space = answer.chars.reject { |ch| ch == " " }

puts "There are #{words_no_space.count} characters in '#{answer}'."