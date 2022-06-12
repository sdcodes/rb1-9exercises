def rotate_array(array)
  new_array = []
  array.each do |num|
  new_array << num
end
new_array.push(new_array[0]).shift
new_array
end 

#ANOTHER WAY

def rotate_array(array_of_items)
 end_of_array = array_of_items.size - 1
  new_array_of_items = array_of_items[1, end_of_array] 
  new_array_of_items << array_of_items[0]
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

p x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]   