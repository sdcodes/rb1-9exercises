def multiply_all_pairs(arr1, arr2)
  index = 0
  arr1_indexes = 0
  new_array = []
  loop do 
    loop do 
     new_array << arr1[arr1_indexes] * arr2[index]
      index += 1
      break if index == arr2.count
    end
    index = 0
    arr1_indexes += 1
  break if arr1_indexes >= arr1.count
  end  
  new_array.sort
end 

#OR OTHER METHOD

def multiply_all_pairs(arr1, arr2)
  new_array = []
  index = 0
  loop do 
    arr2.each do |item|
      new_array << arr1[index] * item
    end 
    index += 1
    break if arr1.size == index
  end 
  new_array.sort
end 

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]