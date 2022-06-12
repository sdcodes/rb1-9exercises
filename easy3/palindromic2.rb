def real_palindrome?(string)
alphanumeric_string = ""
  
  string.delete(" ").each_char do |character|
    numbers = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"]
    
    if  ('a'..'z').include?(character.downcase) || numbers.include?(character)
      alphanumeric_string << character.downcase
    end
  end
  
  alphanumeric_string == alphanumeric_string.reverse
end 


p real_palindrome?('madam') 
p real_palindrome?('Madam')          
p real_palindrome?("Madam, I'm Adam")  
p real_palindrome?('356653') 
p real_palindrome?('356a653') 
p real_palindrome?('123ab321') 

#input: string
#boolean - if palindrom or not
#ignores: case and non-alphanumeric characters 
#remove any spaces, remove any non-alphanumeric characters
#then compare reverse to original 

# OR OTHER WAY

def palindrome?(string)
  string == string.reverse
end 

def real_palindrome?(string)
  new_array = string.chars
  alphanumeric = "abcdefghijklmnopqrstuvwxyz1234567890"
  new_array.select! do |char|
    alphanumeric.include?(char.downcase)
  end 
  palindrome?(new_array.join.downcase)
end 


#OTHER WAY: 

def real_palindrome?(string)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  only_alp_word = ""
  string.chars do |ch|
    if alphabet.include?(ch.downcase)
      only_alp_word << ch.downcase
    end 
  end 
  palindrome?(only_alp_word)
end 