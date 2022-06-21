def fibonacci_last(nth)
  return 1 if nth <= 2
  array_of_nums = [1, 1]
  next_num = 0
  loop do 
    next_num = array_of_nums[-2..-1].sum
    array_of_nums << next_num
    break if array_of_nums.size >= nth
  end 
  next_num.to_s.[-1].to_i
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# p fibonacci_last(123456789)