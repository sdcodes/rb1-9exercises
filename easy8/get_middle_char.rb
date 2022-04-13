def center_of(string)
  array_of_letters = string.chars
  divnum = array_of_letters.size / 2
  two_evens = (array_of_letters.size/2) - 1
  if array_of_letters.size.odd?
    array_of_letters[divnum]
  elsif array_of_letters.size.even?
    array_of_letters[two_evens, 2].join.to_s
  end 
end 

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
      
    