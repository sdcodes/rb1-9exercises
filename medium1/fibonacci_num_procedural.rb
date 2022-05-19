def fib_one(integer)
  first, last = [1, 1]
  3.upto(integer) do 
    first, last = [last, first + last]
  end 
  last
end
    
