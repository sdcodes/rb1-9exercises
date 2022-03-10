def stringy(integer)
  string = "1"

  loop do 
    string << "0"
    break if string.length == integer
    string << "1"
    break if string.length == integer
  end 
  
  string
end 

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'


#input: positive integer
#string - of 1s and 0s equal in length to integer
#receive integer
#loop to add 1 + 0 to string
#stop when length of string = integer