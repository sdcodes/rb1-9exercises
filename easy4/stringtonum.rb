
def string_to_integer(string)
  integers = { "0" => 0, "1" => 1, "2" => 2, "3" => 3, "4" => 4, 
               "5" => 5, "6" => 6, "7" => 7, "8" => 8, "9" => 9}
               
  string_num = string.chars.map { |character| integers[character] }
  value = 0
  string_num.each {|digit| value = 10 * value + digit}
  value
end 
 
p string_to_integer('4321') 
 
#def numarr_to_integer(array) #[4, 3, 2, 1] 
#   array
#input: string
#output: integer
#