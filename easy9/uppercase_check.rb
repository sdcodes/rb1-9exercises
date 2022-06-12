def uppercase?(string)
  string == string.upcase ? true : false
end 
#OTHER WAY

def uppercase?(original_string)
  only_alpha = original_string.chars.select do |ch|
    /[a-zA-Z]/.match?(ch)
  end
  only_alpha.all? do |ch|
      ch == ch.upcase 
  end 
end 

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true