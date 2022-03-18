def modulo_multiply (num, divisor)
  num % divisor == 0
end 

def multisum(max_num)
  total_array = []
  1.upto(max_num) do |n| 
    if modulo_multiply(n, 3) || modulo_multiply(n, 5)
      total_array << n
    end 
  end 
  total_array.sum
end 

p multisum(3) 
p multisum(5) 
p multisum(10) 
p multisum(1000)
  
    


#5 x 4 = 20
#5  x       num
#input: a number
#output a number - sum of all multiples of 3 n 5 to the number provided
#multiples: 3, 6, 9, 12, 5, 10, 15, 20 etc. 
#obtain all multiples of 3 up to number provided
  # counter to limit up to when to divide
  #obtain multiples: if statement of n % 3 == 0 
  # iterate until nreaches counter
#repeat for 5.
#push all numbers to one array
# use sum method to add all numbers
#return number