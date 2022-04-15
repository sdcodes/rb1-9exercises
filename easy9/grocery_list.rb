def buy_fruit(array_list)
  new_array = []
  array_list.map do |item_num|
    item_num[1].times do |_|
      new_array << item_num[0]
    end 
  end 
  new_array
end 
     

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==  
["apples", "apples", "apples", "orange", "bananas","bananas"]