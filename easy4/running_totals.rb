def running_total(arr_of_integers)
  num = 1
  new_array = []
  loop do 
    new_array << arr_of_integers[0, num].inject(:+)
    num += 1
    break if num >= (arr_of_integers.size + 1)

  end 
  new_array
end 
    
p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
#input: array of num
#output: new array of num
#add arr[0] to arr[1], the sum will equal new_arry[1] and so on
#will have to work with index numbers
#take first and second = first new position
