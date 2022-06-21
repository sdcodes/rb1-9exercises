def balanced?(string)
  parentheses = 0
  string.each_char do |char|
     parentheses += 1 if char == '('
     parentheses -= 1 if char == ')'
     break if parentheses < 0
  end
  parentheses.zero?
end 

#ANOTHER WAY

def balanced?(original_string)
  paren_string = ""
  original_string.each_char do |ch|
    if ch == "(" || ch == ")"
      paren_string << ch
    end
  end 
  loop do
    paren_string.gsub!("()", "")
    break if paren_string.size <= 1 || !paren_string.include?("()")
  end
  paren_string.empty?
end 


 p balanced?('What (is) this?')
 p balanced?('((What) (is this))?')
 p balanced?('((What)) (is this))?')
 p balanced?('What (is) this?') == true
 p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
# ( must be first 
# same num of ( & ) 
  