#input: string 
#output: string - all nonalphabetic chars are removed and replaced by space
#no consecutive spaces
#should iterate over the string
#if array with alphabetic.include?chars in string, it's selected
#if not alphabetic, changed to space
#once new string is provided, remove consecutive spaces

def cleanup(string)
  new_string = ""
  alphabet = "abcdefghijklmnopqrstuvwzyz"
  string.each_char do |chrs|
    if alphabet.include?(chrs)
      new_string << chrs
    else
      new_string << " "
    end
  end 
new_string.squeeze(" ")
end 

p cleanup("---what's my +*& line?")

#OR LIKE BELOW 

def cleanup(string)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  new_sentence = ""
  string.chars do |ch|
    if alphabet.include?(ch)
      new_sentence << ch
    else
      new_sentence << " " unless new_sentence.end_with?(" ")
    end
  end
  new_sentence
end 

# OR OTHER WAY

def cleanup(cluttered_string)
  alphabet_and_space = "abcdefghijklmnopqrstuvwxyz "
  new_word = ""
  clean_word = ""
cluttered_string.each_char do |ch|
    if alphabet_and_space.include?(ch) 
      new_word << ch
    else
      new_word << " "
    end
  end 
  new_word.chars.each_with_index do |ch, index|
    if ch == " " && new_word[index + 1] == " "
      next
    else 
      clean_word << ch
    end
  end 
  clean_word
end
