def palindrome?(string)
  if string == string.reverse
     true
  else 
    false 
  end
end 

def palindrome_array(array)
  array == array.reverse
end 



p palindrome_array([1, 2, 3, 2, 1])
p palindrome_array(["s", "t", "g", "s", "t", "i"])
p palindrome_array([10, 20, 3, 60, 20, 3, 20, 10])
p palindrome_array([3, "s", 3])
p palindrome_array([[1, 2], [3], [1, 2]])
  

p palindrome?('madam') 
p palindrome?('Madam')           
p palindrome?("madam i'm adam")  
p palindrome?('356653') 


#input string
#boolean - if palindrome or not
#take string
#string - use reverse method and use comparison == 
#if statement - false if !=