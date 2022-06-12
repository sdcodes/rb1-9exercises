def sequence(num1, num2)
  new_array = []
  last_num = num1 * num2
  if num2 == 0
    while new_array.size < num1
      new_array << num2
    end    
  elsif num2 < 0
    num2.downto(last_num) do |n|
      new_array << n if n % num2 == 0
    end 
  else      
    num2.upto(last_num) do |n| 
      new_array << n if n % num2 == 0
    end 
  end
new_array
end
    
#OR OTHER WAY

def sequence(count_num, first_num)
  new_num = 0
  new_sequence_array = []
  count_num.times do |_|
    new_num += first_num
    new_sequence_array << new_num
  end 
  new_sequence_array
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) #== [-7, -14, -21, -28]
p sequence(3, 0) #== [0, 0, 0]
p sequence(0, 1000000) #== []


# two integers as arguments: 
# 1) the count 2)first num of sequence(every num following should be a multiple of)
# if count 0, return empty array
# number can be negative or positive