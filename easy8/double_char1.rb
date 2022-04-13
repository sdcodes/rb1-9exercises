def repeater(string)
  new_string = ""
  string.each_char do |letter|
    new_string << letter * 2
  end
  new_string
end 

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''