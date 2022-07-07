def century(year)
  string_year = year.to_s
  century = "" 
  
  if year <= 100 
    century = 1
  elsif (string_year.end_with?("0")) && (string_year.length == 3)
    century = string_year[0, 1].to_i
  elsif !(string_year.end_with?("0")) && (string_year.length == 3)
    century = string_year[0, 1].to_i + 1
  elsif (string_year.end_with?("00")) && (string_year.length == 4)
    century = string_year[0, 2].to_i 
  elsif  !(string_year.end_with?("00")) && (string_year.length == 4)
    century = string_year[0, 2].to_i + 1
  elsif (string_year.end_with?("000")) && (string_year.length == 5)
    century = string_year[0, 3].to_i
  elsif !(string_year.end_with?("000")) && (string_year.length == 5)
    century = string_year[0, 3].to_i + 1 
  end
  
  century_string = century.to_s
  
  case century_string
  when century_string.end_with?("11")
    century_string << "th"
  when century_string.end_with?("12")
    century_string << "th"
  when century_string.end_with?("13")
    century_string << "th"
  when century_string.end_with?("1")
    century_string << "st"
  when century_string.end_with?("2")
    century_string << "nd"
  when century_string.end_with?("3")
    century_string << "rd"
  else
century_string << "th"
end 
end 

# OTHER WAY

def ending_of_century(year)
  stringed_year = year.to_s
  if stringed_year.end_with?("11") || stringed_year.end_with?("12") || stringed_year.end_with?("13")
    stringed_year + "th"
  elsif stringed_year.end_with?("1")
    stringed_year + "st"
  elsif stringed_year.end_with?("2")
    stringed_year + "nd"
  elsif stringed_year.end_with?("3")
    stringed_year + "rd"
  else 
    stringed_year + "th"
  end
end 
  

def century(year)
  stringed_year = year.to_s
  if year < 100
    century = 1
  elsif stringed_year[-2..-1].to_i ==  00
    century = stringed_year[0..-3].to_i
  elsif stringed_year[-2..-1].to_i >= 1
    century = (stringed_year[0..-3].to_i + 1)
  end 
  ending_of_century(century)
end 


# OTHER WAY

def century(integer)
  end_part = integer.to_s[-2..-1]
  begin_part = integer.to_s[0..(integer.to_s.size - 3)]
  if end_part == "00"
    century = begin_part
  else 
    century = (begin_part.to_i + 1).to_s
  end 
  if century.end_with?("12") || century.end_with?("13") ||
     century.end_with?("11")
       suffix = "th"
  elsif century.end_with?("1")
    suffix = "st"
  elsif century.end_with?("2")
    suffix = "nd"
  elsif century.end_with?("3")
    suffix = "rd"
  else
    suffix = "th"
  end 
  century + suffix
end 

p century(2000) 
p century(2001) 
p century(1965) 
p century(256) 
p century(5) 
p century(10103) 
p century(1052) 
p century(1127) 
p century(11201) 


#1st, 2nd, 3rd, 4th, 5th, 6th, 7th, 8th, 9th, 10th, 11th, 12th, 13th, 14th
#15th, 16th, 17th, 18th, 19th, 20th, 21st, 22nd, 23rd, 

#input: integer - year
#output: string - century
#rules: st - 1st and 21st, nd for any century ending in 2 except 12th
#rd for every century ending in 3 except 13th, everything else is th
#century = last year of the century
#century = 999 yrs
