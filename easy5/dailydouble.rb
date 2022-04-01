require "pry"



def crunch(string)
  new_string = ""
  index = 0
  string.each_char do |chars|
      new_string << chars if chars != new_string[-1]
      index += 1
    end
  new_string

end 

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''


# input: string
# output: new string
# will have to iterate over each char and remove consecutive duplicates
# if previous char same as current char, do not pass to new string
