def letter_percentages(string)
  alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
  hash = { lowercase: 0, uppercase: 0, neither: 0 }
  string.each_char do |char|
    if alphabet.include?(char) && char == char.upcase
      hash[:uppercase] += 1.0 
    elsif alphabet.include?(char) && char == char.downcase
      hash[:lowercase] += 1.0
    else
      hash[:neither] += 1.0
    end 
  end 
 hash.each_pair {| key, value| hash[key] = ((value / string.size) * 100).round(2)}
end 

p letter_percentages('AbCd +Ef')
p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
p letter_percentages("abcdefGHI")
  