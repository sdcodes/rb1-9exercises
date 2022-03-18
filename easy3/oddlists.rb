
def oddities(array)
  only_odds = []
  
  array.select do |element|
    if array.index(element).even? 
      only_odds << element
    end 
  end
  only_odds
end 
  
def evens(array)
  only_odds = []
  index = 1
  
  while index < array.size
    only_odds << array[index]
    index += 2
  end 
  only_odds
end 
    


p oddities([2, 3, 4, 5, 6]) 
p oddities([1, 2, 3, 4, 5, 6]) 
p oddities(['abc', 'def']) 
p oddities([123]) 
p oddities([]) 

p evens([2, 3, 4, 5, 6]) 
p evens([1, 2, 3, 4, 5, 6]) 
p evens(['abc', 'def']) 
p evens([123]) 
p evens([])
#input: array w/ numbers
#new array with every other  element
#get array
#target the indexes of the array. 
#if index is even, push into new array
#return new array