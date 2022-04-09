require 'pry'
def letter_case_count(string)
  new_hash = {lowercase: 0, uppercase: 0, neither: 0}
  string.each_char do |chars|
    if ("A".."Z").include?(chars)
      new_hash[:uppercase] += 1
    elsif ("a".."z").include?(chars)
      new_hash[:lowercase] += 1
    else
      new_hash[:neither] += 1
    end
  end
  new_hash
end 

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }



# input: string
# output: hash, three entries: lowercase, uppercase, neither
# iterate each char of string. if statement in which three cases:
# value increased upon comparing to lowercase alphabet, uppercase alphabet, and else
# returns new_hash