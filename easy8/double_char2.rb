def double_consonants(string)
  new_string = ""
  consonant = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
  string.each_char do |letter|
    if consonant.include?(letter)
      new_string << letter * 2
    else 
      new_string << letter
    end
  end
  new_string 
end 

#OR LIKE BELOW

def double_consonants(original_string)
  doubled_string = "" 
  consonants = "bcdfghjklmnpqrstvwxyz"
  original_string.chars do |ch|
    if consonants.include?(ch.downcase)
      doubled_string << ch * 2
    else 
      doubled_string << ch    
    end
  end 
  doubled_string
end 

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
