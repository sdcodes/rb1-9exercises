ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXZYabcdefghijklmnopqrstuvwxyz"

def staggered_case(string)
  counter = 0 
 changed_string = string.chars.each do |ch|
    if counter.even? && ALPHABET.include?(ch)
      ch.upcase!
    elsif counter.even? && !(ALPHABET.include?(ch))
      ch 
    elsif counter.odd? && ALPHABET.include?(ch)
      ch.downcase!
    elsif counter.odd? && !(ALPHABET.include?(ch))
      ch 
    end
    counter += 1
  end
  changed_string.join
end 

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'