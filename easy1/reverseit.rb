def reverse_sentence(string)
  sentence = string.split
  sentence.reverse
end 

puts reverse_sentence('Hello World')
puts reverse_sentence('Reverse these words')