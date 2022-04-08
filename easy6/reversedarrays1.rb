

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
#