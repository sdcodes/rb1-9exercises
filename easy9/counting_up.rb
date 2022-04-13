def sequence(integer)
  new_array = []
  1.upto(integer) {|num| new_array << num }
  new_array
end 

# FURTHER EXPLORATION: 
def sequence(integer)
  if integer.negative?
    (integer..0).to_a
  else 
    (1..integer).to_a
  end 
end 

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence(-2)