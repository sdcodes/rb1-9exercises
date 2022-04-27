require 'pry'
def bubble_sort!(array)
 array.each do |item|
    next_num_index = array.index(item) + 1
      if item > array[next_num_index]
        array[array.index(item), 2].reverse!
      else 
        next 
      end
      #binding.pry
    end 
end         
        
array = [6, 2, 7, 1, 4]
p bubble_sort!(array)