def running_total(array) #[ 2, 5, 13 ] 
  sum = 0
  
  array.map do |number|
    sum += number
  end
end 
  
p running_total([2, 5, 13])

#input: array of num
#output: new array of num
#add arr[0] to arr[1], the sum will equal new_arry[1] and so on
#will have to work with index numbers
#take first and second = first new position
