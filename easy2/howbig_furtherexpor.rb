
puts "Enter the length of the room in feet:"
ftlength = gets.chomp.to_f

puts "Enter the width of the room in feet:"
ftwidth = gets.chomp.to_f

SQFEET = ftlength.round(2) * ftwidth.round(2)

foot_to_inches_sq = (ftlength * 12) * (ftwidth * 12) 
foot_to_cm_sq = (ftlength * 30.48) * (ftwidth * 30.48)


puts "The area of the room is #{SQFEET} square feet (#{foot_to_cm_sq.round(2)} square centimeters and #{foot_to_inches_sq.round(2)} square inches)." 

#input: length, width in meters
#output: sq meters, sq feet
#obtain length in meter
#obtain width in meters
# m length x m width = sq m
#given sq meter * 10.7639 = ft sq