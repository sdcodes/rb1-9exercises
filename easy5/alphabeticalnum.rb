def alphabetic_number_sort(array)
  alphnum_hash = {0 => "zero", 1 => "one", 2 => "two", 3=> "three", 4 => "four",
                  5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 
                  10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 
                  14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 
                  17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}

sorted_hash = alphnum_hash.sort_by { |n, word| word }
sorted_hash.to_h.keys
end 

p alphabetic_number_sort((0..19).to_a)


# input: array (of integers)
# output: array (with same numbers but rearranged) 
# sorted based on english word for each number
# set a new hash with key as num, value as word
# sort hash based on value but only return key

# OR OTHER METHOD BELOW

WRITTEN_NUM = {1=>"one", 2=>"two", 3=>"three", 4=>"four", 5=>"five", 
               6=>"six", 7=>"seven", 8=>"eight", 9=>"nine", 10=>"ten", 
               11=>"eleven", 12=>"twelve", 13=>"thirteen", 14=>"fourteen", 
               15=>"fifteen", 16=>"sixteen", 17=>"seventeen", 
               18=>"eighteen", 19=>"nineteen", 0=>"zero"} 

def alphabetic_number_sort(array)
  array.sort_by do |num| 
    WRITTEN_NUM[num]
  end
end

#OTHER WAY
NUMS = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight",
        "nine", "ten", "eleven", "twelve", "thirteen", "fourteen",
        "fifteen", "sixteen", "seventeen", "eighteen", "nineteen" ]

def alphabetic_number_sort(array)
  array.sort_by do |n|
    NUMS[n]
  end 
end
