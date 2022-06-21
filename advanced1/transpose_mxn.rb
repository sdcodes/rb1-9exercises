def transpose(array)
  column = 0
  new_array = []
  new_subarray = []
  loop do 
    array.each do |subarray|
      new_subarray << subarray[column]
    end 
    new_array << new_subarray
    new_subarray = []    
    column += 1
    break if column == (array.max_by {|subarray| subarray.size}).size
  end
  new_array
end

#OTHER METHOD

def transpose(matrix)
  index = 0
  new_matrix = []
  size_of_matrix = (matrix.max_by {|subarray| subarray.count}).size
  loop do 
    new_row = matrix.map do |subarray|
      subarray[index]
    end
    index += 1
    new_matrix << new_row
    break if new_matrix.size == size_of_matrix
  end
  new_matrix
end 

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]] 
 


