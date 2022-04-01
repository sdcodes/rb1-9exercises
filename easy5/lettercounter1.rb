# input: string
# output: hash (key = number of letters in word, value = number of occurances)
# ex: "word three two two" => {3 => 2, 4 => 1, 5 => 1}
# "word" described as any string of chars that do not include a space
# convert to an array. iterate over array. 
# set up new hash. push keys and values into new hash
# return new hash

def word_sizes(string)
  new_hash = {}
  new_array = []
  key = 0 
  string.split do |word|
    key = word.size
    new_array << key 
    new_hash[key] = new_array.count(key)
     end
  new_hash
end 
  
p word_sizes('Four score and seven.')
p word_sizes('Hey diddle diddle, the cat and the fiddle!')
p word_sizes("What's up doc?")
p word_sizes('') 


