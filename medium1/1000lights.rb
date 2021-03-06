def on_off(hash)
  new_array = []
  hash.each_pair do |number, boolean|
    if boolean == true
      new_array << number
    end
  end 
  new_array
end 

def lights_on_off(n_of_lights)
  hash_lights = {}
  index = 1
  (1..n_of_lights).each { |n| hash_lights[n] = false }
  loop do
    hash_lights.each_key do |num|
      if num % index == 0
        hash_lights[num] = !(hash_lights[num])
      end
    end 
    index += 1
    break if index > n_of_lights
  end 
  on_off(hash_lights)  
end


#OHER METHOD
def lights_on(number_lights)
  lights_hash = {}
  (1..number_lights).each { |n| lights_hash[n] = false }
  1.upto(number_lights) do |num|
    lights_hash.each_pair do |key, value|
      lights_hash[key] = !value if key % num == 0
    end 
  end
  (lights_hash.select { |key, value| value == true }).keys
end


p lights_on_off(5)
p lights_on_off(10)
p lights_on_off(1000)   