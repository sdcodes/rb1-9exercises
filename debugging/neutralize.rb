#BUGGED VERSION
# def neutralize(sentence)
#   words = sentence.split(' ')
#   words.each do |word|
#     words.delete(word) if negative?(word)
#   end

#   words.join(' ')
# end

# def negative?(word)
#   [ 'dull',
#     'boring',
#     'annoying',
#     'chaotic'
#   ].include?(word)
# end
# ===========



#DEBUGGED/FIXED VERSION
def neutralize(sentence)
  new_sentence = []
  sentence.split(' ').each do |word|
    new_sentence << word if !negative?(word)
  end

  new_sentence.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.
