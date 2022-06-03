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


p transpose([[1]])


