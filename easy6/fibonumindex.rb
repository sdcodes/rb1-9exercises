def find_fibonacci_index_by_length(num_of_digits)
  index = 0
  index += 1 until fibonacci(index).to_s.size >= num_of_digits
  index 
end   
  
  
def fibonacci(n) 
  if n < 2
    n
  else
    fibonacci(n - 1) + fibonacci(n - 2)
  end 
end 



# p find_fibonacci_index_by_length(2) #== 7          # 1 1 2 3 5 8 13
# p find_fibonacci_index_by_length(3) #== 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) #== 45
# p find_fibonacci_index_by_length(100) #== 476
# find_fibonacci_index_by_length(1000) == 4782
# find_fibonacci_index_by_length(10000) == 47847



# p fibonacci(4) # ==> at position 4, #3 is found
# p fibonacci(7) # ==> position 7, #13
# p fibonacci(2) # ==> position 2, #1
# p fibonacci(10) # ==> psoition 10 ==> #55
