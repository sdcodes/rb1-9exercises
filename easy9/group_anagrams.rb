words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon'] 

anagram_h = {}

words.each do | word|
  key = word.chars.sort.join
  if anagram_h.key?(key)
    anagram_h[key] << word
  else anagram_h[key] = [word]
end 
end

p anagram_h.values


# ANOTHER WAY

def group_anagrams(array_of_words) 
  anagram_hash = {}
  array_of_words.each do |word|
    sorted_word = word.chars.sort.join
    if anagram_hash.include?(sorted_word)
      anagram_hash[sorted_word] << word
    else
      anagram_hash[sorted_word] = [word]
    end 
  end 
  anagram_hash.values
end 