readData = File.open("longest_sentence_frankenstein.txt")
file_data = readData.read
sentences = file_data.split(/\.|\?|!/)
puts longest_sen = sentences.max {|a, b| a.size <=> b.size}
puts longest_sen.split.size
  
  