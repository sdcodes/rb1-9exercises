def leading_substrings(string)
  array = []
  range_num = 1
  loop do 
    array << string[0, range_num]
    range_num += 1
    break if range_num >= (string.size + 1)
  end 
  array
end 

def substrings(string)
  index = 0
  new_array = []
  loop do 
    loop do 
    new_array << leading_substrings(string[index, string.size])
      break     
    end
    index += 1
    break if index >= string.size
  end 
  new_array.flatten
end

def palindromes(string)
  new_array = []
  new_array = substrings(string)
  new_array.select do |s|
    s == s.reverse && (s.size > 1)
  end 
end 

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]


def palindromes_ignore_non_alphanumeric(string)
  numbers = "1234567890"
  new_array = substrings(string)
  new_array.select do |s|
    s.delete(numbers).downcase == s.delete(numbers).downcase.reverse && (s.delete(numbers).size > 1)
end
end 

p palindromes_ignore_non_alphanumeric("Mad0am")
