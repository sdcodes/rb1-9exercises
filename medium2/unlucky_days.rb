require 'date'

def friday_13th(year)
  fridays = []
(Date.new(year,01,01)..Date.new(year,12,31)).select do |date|
  fridays << date if date.friday? && date.strftime("%e") == "13" 
end 
fridays.size
end 

# OR OTHER METHOD

def friday_13th(year)
  month = 1
  counter = 0
   until month == 13
    the_date = Time.new(year, month, 13)
    counter += 1 if the_date.friday? == true
    month += 1
  end 
  counter
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2