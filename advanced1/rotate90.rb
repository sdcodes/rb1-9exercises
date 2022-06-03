def rotate90(array)
  column = 0
  new_array = []
  new_row = []
  loop do 
    array.each do |subarray|
      new_row << subarray[column]
    end 
    new_array << new_row.reverse
    new_row = []
    column += 1
    break if column == (array.max_by {|column_or_row| column_or_row.size}).size
  end 
  new_array
end 


matrix1 = [ [1, 5, 8], [4, 7, 2], [3, 9, 6] ]

matrix2 = [ [3, 7, 4, 2], [5, 1, 0, 8] ]
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p rotate90(matrix1) == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p rotate90(matrix2) == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2

      