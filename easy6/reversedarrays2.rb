def reverse(list)
  new_array = []
  index = -1
  list.each do |item|
    new_array << list[index]
    index -= 1
  end
  new_array
end 
 
#2nd way 

def reverse(list)
  end_index = -1
  counter = 0
  new_array = []
  while counter < list.size
    new_array << list[end_index]
    end_index -= 1
    counter += 1
  end 
  new_array
end 
    
3rd way

def reverse(list)
  index = -1
  list.each_with_object([]) do |_, array|
    array << list[index]
    index -= 1
  end 
end 
    
# OTHER WAY

def reversed(list)
 index = -1
 reversed_list = []
 return list if list.size <= 1
 loop do 
   reversed_list << list[index]
   index += -1
   break if -list.size > index
 end
 reversed_list
end 

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]