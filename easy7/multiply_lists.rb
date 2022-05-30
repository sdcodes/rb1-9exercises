def multiply_list(arr1, arr2)
  index = 0
  final_arr = []
  loop do 
   final_arr[index] = arr1[index] * arr2[index]
   index += 1
   break if index >= arr1.size
  end
  final_arr
end 

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

p multiply_list_w_zip([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# USING ZIP METHOD

def multiply_list_w_zip(arr1, arr2)
  arr1.zip(arr2).map {|sub_arr| sub_arr.inject(:*)}.flatten
end 

#OTHER METHOD

def multiply_list(arr1, arr2)
  index = 0
  new_array = []
  loop do 
    new_array << (arr1[index] * arr2[index])
    index += 1
    break if index == arr1.size
  end 
  new_array
end 

# OTHER METHOD

def multiply_list(arr1, arr2)
  new_array = []
  arr1.each_with_index do |item, index|
    new_array << item * arr2[index]
  end 
  new_array
end 

