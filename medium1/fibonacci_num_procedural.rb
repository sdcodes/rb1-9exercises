def fibonacci(nth)
  return 1 if nth <= 2
  array_of_nums = [1, 1]
  next_num = 0
  loop do 
    next_num = array_of_nums[-2..-1].sum
    array_of_nums << next_num
    break if array_of_nums.size >= nth
  end 
  next_num
end 


p fibonacci(20) == 6765
 p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) 