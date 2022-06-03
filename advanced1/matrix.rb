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
    break if column == array.size
  end
  new_array
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

p transpose(matrix)


