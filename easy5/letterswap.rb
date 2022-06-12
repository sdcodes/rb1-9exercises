def swap(string)
  string_array = string.split
  middle = "" 
  reversed = string_array.map do |item|
      middle = item.delete_prefix(item[0]).delete_suffix(item[-1])
      if item.size > 1
        item[-1] + middle + item[0]
      else
        item
      end
  end 
  reversed.join(" ")
end 

#OTHER WAY

def swap(original_string)
  index = 0
  new_word = ""
  updated_string_array = []
  original_string.split(" ") do |word|
    word.each_char do |ch|
      if index == 0
        new_word << word[-1]
      elsif index == (word.size - 1)
        new_word << word[0]
      else
        new_word << ch
      end
      index += 1
    end
    updated_string_array << new_word
    new_word = ""
    index = 0
  end 
  updated_string_array.join(" ")
end


 p swap('Abcde') == 'ebcdA'
 p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
 p swap('a') == 'a'
    
