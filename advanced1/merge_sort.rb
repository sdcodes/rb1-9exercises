def merge_sort(unsorted_array)
  nested_array = []
  index = 0
  while index < unsorted_array.size
    nested_array << unsorted_array[index, 2]
    index += 2
  end 
  nested_array.map do |subarray| 
    subarray.map! { |num| [num] }
    subarray.sort!.flatten!
  end
  nested_array.flatten.sort
end
    

p merge_sort([9, 5, 7, 1]) 
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]

  
# input: array
# output: array, sorted
# need to do so through merge/sort
# 