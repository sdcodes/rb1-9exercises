
# input: integer (n) - first occurance of n of digits 
# output: integer - index number of input
# 



def fibonacci(number)
  if number < 2
    number
  else
    fibonacci(number - 1) + fibonacci(number - 2)
  end
  number.index
end

puts fibonacci(5)