#give a number
#break number by each number
#provide new list of individual digits 

def digit_list(positivenum)
  stringnum = positivenum.to_s
  stringnum.chars.map { |num| num.to_i }
end
  
puts digit_list(12345)
puts digit_list(7)
puts digit_list(375290)
puts digit_list(444)

# ANOTHER METHOD

def digit_list(integer)
  digits = {"1"=>1, "2"=>2, "3"=>3, "4"=>4, "5"=>5, "6"=>6, 
            "7"=>7, "8"=>8, "9"=>9, "0"=>0} 
  integer.to_s.chars.map {|n| digits[n] }      
end 

p digit_list(12345) #== [1, 2, 3, 4, 5]  