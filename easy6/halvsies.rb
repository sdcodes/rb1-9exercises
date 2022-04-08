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