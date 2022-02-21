def repeat(string, integer)
  count = 0
   loop do
     puts string 
     count += 1
    break if count == integer
   end
end


repeat("hello", 6) 