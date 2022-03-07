def reverse_words(strings)
  words = strings.split
  words.map! do |word|
    if word.length >= 5
      word.reverse
    else 
      word
    end
  end 
end 


p reverse_words('Professional')
p reverse_words('Walk around the block') 
p reverse_words('Launch School') 