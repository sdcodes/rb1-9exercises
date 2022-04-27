require 'date'

def friday_13th(year)
  fridays = []
(Date.new(year,01,01)..Date.new(year,12,31)).select do |date|
  fridays << date if date.friday? && date.strftime("%e") == "13" 
end 
fridays.size
end 

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2