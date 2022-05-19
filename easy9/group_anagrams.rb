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