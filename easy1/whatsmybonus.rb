def calculate_bonus(salary, boolean)
  bonus = 0 
  
  if boolean == true
    bonus = salary / 2
  else 
    bonus = 0
   end 
end 


puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

#input: positive intergere, a boolean
#output: bonus amount 
# if else - bonus is half the amount provided
#if true, provide amount that is salary/2 
#bonus is 0 if provided false
