def multiply(num1, num2)
  num1 * num2
end 

def square(num)
  multiply(num, num) 
end 

def power_to_n(number, power)
  multiply(number, 1) ** power
end 

p square(5)
p power_to_n(6, 3)