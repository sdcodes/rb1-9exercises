vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def counting(array)
  hash = {}
array.each do |item|
  hash[item] = array.count(item)
end 
hash
end 
  
def count_occurrences(array)
  counting(array).each_pair do |type, num|
    puts "#{type} => #{num}"
  end 
end 

 count_occurrences(vehicles) 