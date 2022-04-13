def string_to_signed_integer(string)
digits = {"1" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9, "0" => 0, "+" => 0}
value = 0
if string[0] != "-"
new_array = string.chars.map { |char| digits[char] }   
new_array.each {|digit| value = 10 * value + digit}
value
elsif string[0] == "-"
  new_array = string.delete("-").chars.map  { |char| digits[char] }
  new_array.each {|digit| value = 10 * value + digit}
  -value
end
end 

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100