def featured(integer)
  (integer..).select do |n|
    if n.odd? && n % 7 == 0 && n.to_s.chars.uniq == n.to_s.chars && n > integer
      return n 
    elsif n >= 9_876_543_210
      return "There is no possible number that fulfills those requirements" 
  end
end 
end


p featured(12) == 21
p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999)

#to be featured number:
 # odd number
 # multiple of 7
 # digits occur only once each
# input: integer
# output: integer - greater than input. must be featured number
# define - featured number? have all featured numbers in array
# that's larger than featured number
# first number sorted is next featured number