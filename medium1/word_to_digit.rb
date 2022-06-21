NUMBERS = { "one" => "1", "two" => "2", "three" => "3", "four" => "4", 
            "five" => "5", "six" => "6", "seven" => "7", "eight" => "8",
            "nine" => "9", "zero" => "0" }
            
def word_to_digit!(string)
  NUMBERS.each_pair do |key, value|
 string.gsub!(key, value)
  end
  string
end

#OTHER WAY

def word_to_digit(original_string)
  word_digit_hash = { "zero" => 0, "one" => 1, "two" => 2, "three" => 3, 
                      "four" => 4, "five" => 5, "six" => 6, "seven" => 7, 
                      "eight" => 8, "nine" => 9}
index = 0
new_string = ""
  loop do   
  all_keys = word_digit_hash.keys 
  original_string.gsub!(all_keys[index], word_digit_hash)
  index += 1
  break if index + 1 > all_keys.size
end 
original_string
end 



puts word_to_digit!('Please call me at five five five one two three four. Thanks.') 
