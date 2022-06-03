#BUGGED VERSION
# def decrease(counter)
#   counter -= 1
# end

# counter = 10

# 10.times do
#   puts counter
#   decrease(counter)
# end

# puts 'LAUNCH!'
# ------- 

# FIXED VERSION 
def shout_out_to(name)
  name.upcase!

  puts 'HEY ' + name
end

shout_out_to('you')

