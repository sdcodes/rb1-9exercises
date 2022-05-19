require 'pry'
NUMBERS = { "one" => "1", "two" => "2", "three" => "3", "four" => "4", 
            "five" => "5", "six" => "6", "seven" => "7", "eight" => "8",
            "nine" => "9", "zero" => "0" }
            
def word_to_digit!(string)
  NUMBERS.each_pair do |key, value|
 string.gsub!(key, value)
 #binding.pry
  end
  string
end


puts word_to_digit!('Please call me at five five five one two three four. Thanks.') 
