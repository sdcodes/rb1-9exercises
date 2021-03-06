require "pry"
DEGREE = "\xC2\xB0"
DOUBLE_QUOTE = '"'
SINGLE_QUOTE = "'"
DECIMAL = "."

def dms(degree)
  if degree.negative? || degree > 360
    outside_range_degree(degree)
  else
    stringed_degree = degree.to_s
    parted_arr = stringed_degree.partition(DECIMAL) # ["76", ".", "73"]
    minutes = (parted_arr[1] + parted_arr[2]).to_f * 60 # 43.8 
    parted_mins = minutes.to_s.partition(DECIMAL) # ["43", ".", "8"]
    seconds = (parted_mins[1] + parted_mins[2]).to_f * 60 # 48.0 
    final_min = minutes.to_i.to_s.rjust(2, "0")
    final_sec = seconds.to_i.to_s.rjust(2, "0")
    parted_arr[0] + DEGREE + final_min + SINGLE_QUOTE + final_sec + DOUBLE_QUOTE
  end 
end 
  
def outside_range_degree(degree)
  stringed_new_degree = (((degree % 360) + 360) % 360).to_s
  parted_arr = stringed_new_degree.partition(DECIMAL) # ["76", ".", "73"]
  minutes = (parted_arr[1] + parted_arr[2]).to_f * 60 # 43.8 
  parted_mins = minutes.to_s.partition(DECIMAL) # ["43", ".", "8"]
  seconds = (parted_mins[1] + parted_mins[2]).to_f * 60 # 48.0 
  final_min = minutes.to_i.to_s.rjust(2, "0")
  final_sec = seconds.to_i.to_s.rjust(2, "0")
  parted_arr[0] + DEGREE + final_min + SINGLE_QUOTE + final_sec + DOUBLE_QUOTE
end 
      
  
puts dms(400) 
puts dms(-40) 
puts dms(-420) 
puts dms(30) #== %(30°00'00")
puts dms(76.73) #== %(76°43'48")
puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# input: num
# output: string. three sections (degree, min, sec)
# degree symbol, single quote, double quotes
# for minutes and seconds, two digit numbers w/ leading zeros if necessary
# break down number. number before decimal becomes degrees
# num after decimal multiple by 60. integer becomes minutes. if remainder 
# remainder multipled by 60 becomes seconds

# OR OTHER WAY:

DEGREE = "\xC2\xB0"
MINUTE_SIGN = "'"
SECOND_SIGN = '"'

def dms(number)
  d_arr = number.divmod(1)
   d_arr[1] *= 60
   d_arr[1] = d_arr[1].divmod(1)
   d_arr[1][1] = (d_arr[1][1] * 60).to_i
   d_arr.flatten!
   "#{d_arr[0]}" + DEGREE + sprintf("%02d", "#{d_arr[1]}") + MINUTE_SIGN + sprintf("%02d", "#{d_arr[2]}") + SECOND_SIGN
end 

#OTHER WAY

DEGREE = "\xC2\xB0"
MINUTE = "'"
SEC = "\""
def dms(number)
  degree_mins = number.divmod(1)
  degree = degree_mins[0].to_s
  minutes_secs = (degree_mins[-1] *= 60).divmod(1)
  minutes = minutes_secs[0].to_s
  seconds = (minutes_secs[-1] * 60).to_i.to_s
  degree + DEGREE + sprintf("%02d", minutes) + MINUTE + sprintf("%02d", seconds) + SEC
end 


# OTHER WAY

DEGREE = "\xC2\xB0"

def dms(number)
  beginning = number.divmod(1)
  degrees = beginning[0]
  obtain_minutes = number.divmod(1)[1] * 60 
  minutes = obtain_minutes.divmod(1)[0]
  seconds = (obtain_minutes.divmod(1)[1] * 60).to_i 
  degrees.to_s + DEGREE + sprintf("%02d", minutes) + "'" + sprintf("%02d", seconds) + '"'  
end