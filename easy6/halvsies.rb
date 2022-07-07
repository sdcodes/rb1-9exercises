def halvsies(array)
  new_array = []
  if array.count == 1
    divnum = 1
  else
    divnum = (array.count.to_f/2).round
  end 
  first_nest = array.slice(0, divnum)
  sec_nest = array.reject {|n| first_nest.include?(n) }
  new_array.push(first_nest).push(sec_nest)
end 

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

#OR METHOD

def halvsies(array)
  if array.empty?
    new_array = [], []
  else 
    mid_num = (array.size / 2.0).round
    new_array = array[0, mid_num], array[mid_num, array.last]
  end
end 

# OTHER WAY

def halvsies(original_array)
  size_num_divide = (original_array.size / 2)
  if original_array.empty?
    divided_array = [], []
  elsif original_array.size.even?
    divided_array = original_array[0, size_num_divide],  [size_num_divide, size_num_divide]
  elsif original_array.size.odd?
   divided_array = original_array[0, (size_num_divide + 1)], original_array[(size_num_divide + 1), size_num_divide]
  end 
end 

# OTHER METHOD
def halvsies(array)
  new_array = []
  half = array.size/2
  if array.size.even? 
    new_array.push(array[0, half]).push(array[half, half])
  else
    large = (array.size.to_f/2).round(half: :up)
    new_array.push(array[0, large]).push(array[large, half])
  end 
  new_array
end

