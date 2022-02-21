def is_odd?(num)
  if 
    num % 2 == 0
    puts false
  else 
    puts true
  end
end

puts is_odd?(-8)

# using numeric#remainder is below 

def using_remainder(num)
  if 
   num.remainder(2) != 0
   puts true
  else
    puts false
  end
end

using_remainder(9)

