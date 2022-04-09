require 'pry'
def interleave(arr1, arr2)
  new_array = []
  index = 0
  arr1.each do|element| 
    new_array[index] = element
    index += 2
  end
  index = 1
  arr2.each do |element|
    new_array[index] = element
    index += 2
  end 
  new_array
end 

#FURTHER EXPLORATION:

def interleave_w_zip(arr1, arr2)
  new_array = arr1.zip(arr2).flatten
end 

p interleave_w_zip([1, 2, 3], ['a', 'b', 'c'])

# input: two arrays (two arguments)
# output: one new array
# new array must contain all elements from original two arrays
# elements are in new array in alternation 
# two arrays have same number of elements
# iterate over arr1. make each element odd.index of new array
# iterate over arr2. make each element even.index of new array
# return new array