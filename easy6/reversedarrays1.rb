def reverse!(list)
  new_array = []
  index = -1
  list.each do |item|
    new_array << list[index]
    index -= 1
  end
  list.replace(new_array)
end 
 

p list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

p list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

p list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

p list = []
p reverse!(list) == [] # true
p list == [] # true

#input: array
#output: same array, mutated
#revser elements w/ using reverse method
#iterage through array 


# OR METHOD

def reversed!(array)
  ind = -2
  if array.size <= 2
    array 
  else
    loop do 
      array.push(array.delete_at(ind))
      ind -= 1
      break if (-ind) > array.size
    end
  end 
  array
end 

# OTHER WAY


def reversed!(list)
  index = -1
  list2 = list.dup
  list.map! do |item|
    new_num = list2[index]
    index += -1
    new_num
  end 
end 