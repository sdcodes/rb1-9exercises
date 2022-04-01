def print_in_box(string)
  line = "-" * string.length 
  space = " " * string.length
  
  puts "+-#{line}-+" 
  puts "| #{space} |"
  puts "| #{string} |"
  puts "| #{space} |"
  puts "+-#{line}-+"
end 

print_in_box('To boldly go where no one has gone before.')

#input: string
#output: print out text in box
#box's size changes with length of string width wise but not length size
#