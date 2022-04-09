def swap_case(string)
  new_string = ""
  string.each_char do |letter|
    if ("a".."z").include?(letter)
      new_string << letter.upcase
    else
      new_string << letter.downcase
    end 
  end 
  new_string
end 

p swap_case('CamelCase') == 'cAMELcASE'
p swap_case('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# input: string
# output: new string w/ cases swapped throughout
# iterate through string. if statement: if letter included in a..z, capitalize else, lowercase
#return new string