def fizzbuzz(start_num, end_num)
  (start_num..end_num).to_a.map do |num|
    if num % 3 == 0 && num % 5 == 0
      num = "FizzBuzz"
    elsif num % 3 == 0
      num = "Fizz"
    elsif num % 5 == 0
      num = "Buzz"
    else
      num
    end 
  end
end 

p fizzbuzz(1, 15) 