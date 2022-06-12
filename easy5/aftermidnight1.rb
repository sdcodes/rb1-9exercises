MINUTE = 1
HOUR = 60 * MINUTE 

def time_of_day(integer)
  return "00:00" if integer == 0 || integer == 24
  if integer < 1440 && integer.positive?
  basic_time =  integer.divmod(HOUR)
  elsif integer > 1440 && integer.positive?
    integer -= 1440 while integer > 1440 
    basic_time = integer.divmod(60)
  elsif integer > -1440 && integer.negative?
    integer = 1440 + integer
    basic_time = integer.divmod(HOUR)
  elsif integer < -1400 && integer.negative?
     integer += 1440 while integer < -1400
     integer = 1440 + integer
     basic_time = integer.divmod(HOUR)
  end 
  basic_time.map! { |num| sprintf("%02d", num)} 
  basic_time[0] + ":" + basic_time[1]
end

time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"

