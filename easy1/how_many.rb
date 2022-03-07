vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]


def count_occurrences(type)
  occurance_hash = {}
  
  type.uniq.select do |occur|
    occurance_hash[occur] = type.count(occur)
  end 
  
  occurance_hash.each do |element, count|
    puts "#{element} => #{count}"
  end 
end     

count_occurrences(vehicles)