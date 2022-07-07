def after_midnight(stringed_time)
  return 0 if stringed_time == "00:00" || stringed_time == "24:00"
  numed_array = stringed_time.split(":").map {|n| n.to_i}
  (numed_array[0] * 60) + numed_array[1]
end 

def before_midnight(stringed_time)
  return 0 if stringed_time == "00:00" || stringed_time == "24:00"
  minutes_gone_by = after_midnight(stringed_time)
  1440 - minutes_gone_by
end 


# OTHER WAY

def after_midnight(string)
  return 0 if string == "24:00"
  hour = string[0..1].to_i
  minute = string[3..4].to_i
  (hour * 60) + minute
end 

def before_midnight(string)
  return 0 if string == "24:00"
  hour = string[0..1].to_i
  minute = string[3..4].to_i
  720 - ((12 - hour) * 60) - minute
end 


p after_midnight('12:34') == 754
p after_midnight('00:00') == 0
p after_midnight('24:00') == 0
p after_midnight("23:02") 
p before_midnight('00:00') == 0
p before_midnight('12:34') == 686
p before_midnight('24:00') == 0