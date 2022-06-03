# BUGGED VERSION 
# def decrease(counter)
#   counter -= 1
# end

# counter = 10

# 10.times do
#   puts counter
#   decrease(counter)
# end

# puts 'LAUNCH!'

# ------ 

# FIXED VERSION
def decrease(counter)
  counter - 1
end

counter = 10

10.times do
puts counter = decrease(counter)
end

puts 'LAUNCH!'

#FURTHER EXPLORATION

10.downto(1) { |n| puts n }
puts 'LAUNCH!'
