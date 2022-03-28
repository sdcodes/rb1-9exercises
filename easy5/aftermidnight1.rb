def time_of_day(integer)
  minute = 1
  hour = minute * 60 
  
end 





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

