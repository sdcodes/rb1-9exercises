def short_long_short(string1, string2)
   if string1.length < string2.length
    puts string1 + string2 + string1
  elsif string2.length < string1.length
    puts string2 + string1 + string2
  else 
    puts "something went wrong!"
  end 
end 

short_long_short('abc', 'defgh')
short_long_short('abcde', 'fgh') 
short_long_short('', 'xyz') 


#input: two strings
#output: concatenated string (of the two strings in 1, 2, 1 order)
#compare the two strings. 
#shortest string is goes first, longest is second, shortest is last
#returns concatenated string