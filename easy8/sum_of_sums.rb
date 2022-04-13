def sum_of_sums(array_of_nums)
  new_array = []
  range_num = 1
  loop do 
   new_array << array_of_nums[0, range_num] 
   range_num += 1
   break if range_num >= (array_of_nums.size + 1)
  end 
  new_array.flatten.sum
end 
p sum_of_sums([3, 5, 2])
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35

# input: array of numbers
# output: number. sum of the sums of each leading subsequence for that array
# 