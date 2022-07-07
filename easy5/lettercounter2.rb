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

#OR METHOD BELOW

def word_sizes(string)
  alphabet = "abcdefghijklmnopqrstuvwxyz "
  new_hash = {}
  new_sentence = ""
  string.each_char do |ch|
    new_sentence << ch if alphabet.include?(ch.downcase) || ch == " "
  end
  new_sentence.split.each do |word|
  if new_hash.key?(word.size)
      new_hash[word.size] += 1
    else
      new_hash[word.size] = 1
    end 
  end 
  new_hash
end 

# OTHER WAY

def word_sizes(original_string)
  count_hash = {}
  alpha_string = []
  original_string.chars do |ch|
    alpha_string << ch if /[[:alpha:]]/.match?(ch) || ch == " "
  end 
  alpha_string.join.split(" ") do |word|
    if count_hash.include?(word.size)
      count_hash[word.size] += 1
    else
      count_hash[word.size] = 1
    end
  end 
  count_hash
end 

# OTHER WAY
def word_sizes(string)
  count_hash = {}
  string.split do |word|
    letters_only = ""
    word.each_char {|ch| letters_only << ch if /[a-zA-Z]/.match?(ch)}
    if count_hash.include?(letters_only.size)
      count_hash[letters_only.size] += 1
    else
      count_hash[letters_only.size] = 1
    end
  end 
  count_hash
end

  
p word_sizes('Four score and seven.')
p word_sizes('Hey diddle diddle, the cat and the fiddle!')
p word_sizes("What's up doc?")
p word_sizes('') 
