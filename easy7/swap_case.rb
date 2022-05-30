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

#OR METHOD 

def swapcase(string)
  sentence = string.chars.map do |ch|
    if /[a..z]/.match?(ch)
      ch.upcase
    elsif /[A..Z]/.match?(ch)
      ch.downcase
    else
      ch
    end 
  end
  sentence.join()
end 