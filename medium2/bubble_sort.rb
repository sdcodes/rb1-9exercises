# input: array of num
# sorted array using the bubble algo
# iterate through array - first two elements are compared.  
  # if first is greater than second, elements are swapped
  # go to second and third elements, if second > third, swapped
  # swapping is done in place
  #after done with first go through, does again and again until no swaps are done


def bubble_sort!(array_of_items)
  loop do 
    swapped_counter = 0
    outer_index = 0
    array_of_items.each_with_index do |item, index|
      next_index = index + 1
      if array_of_items[next_index] == nil 
        nil 
      elsif item > array_of_items[next_index]
        lesser_item = array_of_items.delete_at(next_index)
        array_of_items.insert(index, lesser_item)
        swapped_counter += 1
      end 
      outer_index += 1
    end 
    break if swapped_counter == 0
  end 
  array_of_items
end
    
p array = [5, 3]
p bubble_sort!(array)
p array == [3, 5]

p array = [6, 2, 7, 1, 4]
p bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

p array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
p bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
    