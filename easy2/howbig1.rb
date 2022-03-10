puts "Enter the length of the room in meters:"
mlength = gets.chomp.to_f

puts "Enter the width of the room in meters:"
mwidth = gets.chomp.to_f

sqmeters = mlength * mwidth 
sqfeet = sqmeters * 10.7639

puts "The area of the room is #{sqmeters.floor(2)} square meters (#{sqfeet.floor(2)} square feet)." 

#input: length, width in meters
#output: sq meters, sq feet
#obtain length in meter
#obtain width in meters
# m length x m width = sq m
#given sq meter * 10.7639 = ft sq