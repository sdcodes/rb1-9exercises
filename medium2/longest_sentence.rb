readData = File.open("longest_sentence_frankenstein.txt")
file_data = readData.read
sentences = file_data.split(/\.|\?|!/)
puts longest_sen = sentences.max {|a, b| a.size <=> b.size}
puts longest_sen.split.size
  
# OTHER WAY

def longest_sentence(original_string)
  substring_array = []
  array_of_sentences = [] 
  all_words = original_string.split
    all_words.each do |word| 
      if word.end_with?(".") || word.end_with?("?") || word.end_with?("!")
      substring_array << word
      array_of_sentences << substring_array
      substring_array = []
    else
      substring_array << word
    end 
  end  
long_sentence = array_of_sentences.max { |subarray| subarray.size }
long_sentence.join(" ") + " #{long_sentence.size}"
end 