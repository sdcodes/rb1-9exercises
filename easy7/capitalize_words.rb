def word_cap(string)
  array_of_words = string.split
  
  array_of_words.map do |char|
    char.capitalize!
  end 
 array_of_words.join(" ") 
end 

p word_cap('four score and seven') #== 'Four Score And Seven'
p word_cap('the javaScript language') #== 'The Javascript Language'
p word_cap('this is a "quoted" word') #== 'This Is A "quoted" Word'

# input: string
# output: new string. capitalize each word. word is any sequence of non-blank characters
# can split string by space. 
# iterate through array. capitalize through words. join words again into string
# return string. 

#OR OTHER METHOD

def word_cap(string)
  new_sentence = string.split.map do |word|
    word.capitalize
  end
  new_sentence.join(" ")
end 