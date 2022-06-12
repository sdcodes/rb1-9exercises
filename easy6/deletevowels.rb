
def remove_vowels(array)
  array.map do |string|
    string.delete("aeiouAEIOU")
  end
end 

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# input: array of string 
# output: array of same string except with the vowels removed. 

#OTHER WAY

def remove_vowels(string_w_vowels)
  new_word = ""
  string_w_vowels.map do |word|
    new_word = ""
    word.each_char do |ch|
      if "aeiouAEIOU".include?(ch)
        next
      else
        new_word << ch
      end
    end 
    new_word
  end 
end 