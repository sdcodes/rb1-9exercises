def merge(list1, list2)
  unsorted_array = list1 + list2
  sorted_list = []
loop do 
  break if unsorted_array.empty?
  sorted_list << unsorted_array.slice!(unsorted_array.index(unsorted_array.min))
end
sorted_list
end 

# OTHER WAY

def merge(array1, array2)
  total_array = array1 + array2
  sorted_array = []
  loop do 
    sorted_array << total_array.delete_at(total_array.index(total_array.min))
    break if total_array.empty?
  end 
  sorted_array
end  

a = [1, 4, 5, 3]
b = [2, 6, 8]

p merge([1, 5, 9], [2, 6, 8])
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
p merge(a, b)
p a
p b