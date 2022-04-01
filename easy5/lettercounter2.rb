def word_sizes(string)
  new_hash = {}
  new_array = []
  key = 0 
  string.split do |word|
    word.delete!("^abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ")
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
