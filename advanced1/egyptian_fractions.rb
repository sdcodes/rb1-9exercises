def egyptian(rational_num)
  remainder = rational_num
  total_unit_fractions = []
  
  if rational_num < 1
    (2..).each do |num|
      largest_unit_f_below = Rational(1, num)
      if remainder < largest_unit_f_below
        next
      elsif remainder >= largest_unit_f_below
        total_unit_fractions  << largest_unit_f_below 
      end 
      break if total_unit_fractions.sum >= rational_num
      remainder = remainder - largest_unit_f_below
      if remainder.numerator == 1
        total_unit_fractions << remainder
        break
      end 
    end
  else 
    total_unit_fractions << 1/1r
    remainder = rational_num - 1/1r
    (2..).each do |num|
      largest_unit_f_below = Rational(1, num)
      if largest_unit_f_below <= remainder 
        remainder = remainder - largest_unit_f_below
        total_unit_fractions  << largest_unit_f_below 
      end 
      break if total_unit_fractions.sum >= rational_num
    end 
  end 
  total_unit_fractions.map {|num| num.denominator} 
end


def unegyptian(array_of_unit_denominators)
  numerator = 1
  array_of_unit_fractions = array_of_unit_denominators.map do |denom_num|
    Rational(numerator, denom_num)
  end
  Rational(array_of_unit_fractions.sum)
end 
  
  
# OTHER METHOD 

def egyptian(rational_number)
  denominator = 2
  unit_f_collection = []
  if rational_number > 1
    unit_f_collection << 1/1r
    remainder = rational_number - 1/1r
  else
  remainder = rational_number
  end 
  loop do 
    if remainder >= 1/denominator.to_r
      unit_f_collection << 1/denominator.to_r
      remainder = remainder - 1/denominator.to_r
    end 
    denominator += 1
    break if unit_f_collection.sum == rational_number
  end 
  unit_f_collection.map { |n| n.denominator }
end 
  
def unegyptian(denominators_arr)
 unit_fractions = denominators_arr.map do |num|
    1/num.to_r
  end 
  unit_fractions.sum.to_r
end 

p egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1)) 


p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)
    