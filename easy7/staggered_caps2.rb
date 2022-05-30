LOWERCASE = "abcdefghijklmnopqrstuvwxyz"
UPPERCASE = "ABCDEFGHIJKLMNOPQRSTUVWXZY"
ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXZYabcdefghijklmnopqrstuvwxyz"

def staggered_case(string)
  counter = 0 
 changed_string = string.chars.each do |ch|
    if counter.even? && ALPHABET.include?(ch)
      ch.upcase!
      counter += 1
    elsif counter.even? && !(ALPHABET.include?(ch))
      ch 
      counter += 0
    elsif counter.odd? && ALPHABET.include?(ch)
      ch.downcase!
      counter += 1
    elsif counter.odd? && !(ALPHABET.include?(ch))
      ch 
      counter += 0
    end
  end
  changed_string.join
end 

#OTHER METHOD

def staggered_case(string)
  new_string = ""
  index = 0
  string.chars.each do |ch|
    if  /[a-zA-Z]/.match?(ch)
      if index.even?
       new_string << ch.upcase
      elsif index.odd?
       new_string << ch.downcase
      end 
      index += 1
    else
      new_string << ch
    end 
  end 
  new_string
end  

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'