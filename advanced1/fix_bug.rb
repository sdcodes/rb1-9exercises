def my_method(array)
  if array.empty?
    []
  elsif array.size > 1 
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

p my_method([])
p my_method([3])
p my_method([3, 4])
p my_method([5, 6, 7])

# the elsif was missing the condition statement needed in order to execute  
# the below corresponding code



