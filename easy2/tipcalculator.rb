puts "what is the bill?" 
bill_answer = gets.chomp.to_f

puts "What is the tip percentage?" 
tip_answer = gets.chomp.to_f


p decimal_tip = tip_answer * 0.01
p total_tip = bill_answer * decimal_tip
p total_bill = total_tip + bill_answer

puts "The tip is $ #{format("%.2f", total_tip)}"


puts "The total is #{format("%.2f", total_bill)}" 