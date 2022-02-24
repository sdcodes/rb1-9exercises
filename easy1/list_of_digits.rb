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