MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def normalize_minutes_0_thru_1439(minutes)
  while minutes < 0
    minutes += MINUTES_PER_DAY
  end 
  
  minutes % MINUTES_PER_DAY
end 

def time_of_day(delta_minutes)
  delta_minutes = normalize_minutes_0_thru_1439(delta_minutes)
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end 

time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"


#input: integer
#string. time of day in hh:mm format
#rules: negative number = before midnight
#       positive number = after midnight
# =>    return string with hhmm format
#       1400 minutes in one day
# define method w/ one parameter
#cases: time_of_day(0) == "00:00"
#       time_of_day(-3) == "23:57"
# if num start w/ "-" - negative number. must be 12:00 - 23:59 (subtracting)
#otherwise, positive number.  00:00 - 11:59
#need to divide section - 12 hrs (60 min each)
# -1440 - 0 / 0 - 1440
#every 60 becomes one hour
#

