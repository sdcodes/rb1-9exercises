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

# OR OTHER WAY

# input: string
# output: hash 
# two parts:
  # 1) part one, collecting the number of instances for lower, upper, neither
  # 2) obtain the percentage amount for each instance
# 1 ---> set up hash. iterate over string, w/ each ch being tracked.
  # use value as counter of instances
# 2 ---> have the num value change to reflect percentage amount. 
  #  (value/total value)×100%.
  # l: 5, u: 1, n: 4, total value: 10
  # example 5/10 * 100 = 50.00 


def letter_percentages(original_string)
  percent_hash = {lowercase: 0, uppercase: 0, neither: 0}
  total_value = 0
  original_string.each_char do |ch|
    if /[A-Z]/.match?(ch) 
      percent_hash[:uppercase] += 1
    elsif /[a-z]/.match?(ch)
      percent_hash[:lowercase] += 1
    else
      percent_hash[:neither] += 1
    end 
  end
  percent_hash.each_pair do |key, value|
    total_value = original_string.size.to_f
    percent_hash[key] = (value/total_value) * 100
  end 
  percent_hash
end 

p letter_percentages('AbCd +Ef')
p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
p letter_percentages("abcdefGHI")
  