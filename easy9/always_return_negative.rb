def negative(integer)
  if integer.negative?
    integer
  elsif integer == 0 # could remove this elsif as ruby won't trip over the 0 but it reads cleaner to me w/ it
    integer
  else
    -integer
  end 
end 

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0  