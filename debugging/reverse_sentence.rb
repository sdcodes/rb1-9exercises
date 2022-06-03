#BUGGED VERSION 
# def reverse_sentence(sentence)
#   words = sentence.split(' ')
#   reversed_words = []

#   i = 0
#   while i < words.length
#     reversed_words = [words[i]] + reversed_words
#     i += 1
#   end

#   reversed_words.join(' ')
# end



# FIXED VERSION
def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = -1
  until (-i) > words.length
    reversed_words << words[i] 
    i -= 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')