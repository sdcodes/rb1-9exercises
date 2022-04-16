def on_off(hash)
  new_array = []
  hash.each_pair do |number, boolean|
    if boolean == true
      new_array << number
    end
  end 
  new_array
end 

def display_toggle(hash)
  on_toggles = []
  off_toggles = []
  hash.each_pair do |num, boolean|
    if boolean == true 
      on_toggles << num 
    else
      off_toggles << num
    end
  end 
  
  if on_toggles.empty?
    on_sentence = "All lights are on."
  elsif off_toggles.size == 2
    off_sentence = "Lights #{off_toggles.join(" and ")} are now off;"
  elsif off_toggles.size == 1
    off_sentence = " Light #{off_toggles[0]} is on"
  elsif off_toggles.size > 2
    off_sentence = "Lights #{off_toggles.join(", ").insert(-3, " and ").gsub("  ", " ")} are now off;"
  end
  
  if off_toggles.empty? 
    off_sentence = "All lights are off."
  elsif on_toggles.size == 2
   on_sentence = "Lights #{on_toggles.join(" and ")} are on."
  elsif on_toggles.size == 1
   on_sentence = "#{on_toggles[0]} is on."
  elsif on_toggles.size > 2
    on_sentence = "Lights #{on_toggles.join(", ").insert(-3, " and ").gsub("  ", " ")} are on."
  end
  puts "#{off_sentence}" + " #{on_sentence}" 
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
    display_toggle(hash_lights)
    index += 1
    break if index > n_of_lights
  end 
  on_off(hash_lights)  
end

puts lights_on_off(10)