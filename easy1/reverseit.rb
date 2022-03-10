def reverse_sentence(string)
  string_array = string.split.reverse 
  string_array.join(" ")
end 
  
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''  
  
  
  
#input: string
#output new string that has the words reversed
#string to go to an array
#switch order of items in array
#switch back to string 