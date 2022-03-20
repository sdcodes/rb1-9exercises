def ascii_value(string)
  new_array = []
  string.split(//).map do |char|
    new_array << char.ord
  end 
  new_array.inject(:+)
end 
  
ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

#mystery => chr