
def double?(integer)
  num_array = integer.digits
  divnum = num_array.size/2
  num_array[0,divnum] == num_array[divnum, divnum] ? true : false
end 

def twice(integer)
  num_array = integer.digits
  if double?(integer) && num_array.size.even?
    integer
  else 
    integer * 2
  end 
end 

# OTHER WAY

def twice(integer)
  return (integer * 2) if integer.to_s.size.odd?
  mid_num = integer.to_s.size / 2
  if integer.to_s[0, mid_num] == integer.to_s[mid_num, mid_num]
    return integer
  else 
    integer * 2
  end 
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10