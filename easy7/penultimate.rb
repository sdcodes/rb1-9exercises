def penultimate(string)
  string.split[-2]
end 

# penultimate w/ edgecases addressed

def penultimate(string)
  if string == " " || string.empty?
    puts "This was empty. Please provide a word or sentence."
  elsif string.include?(" ")
    string.split[-2]
  else
    string.split(//)[-2]
  end   
end 

# FURTHER EXPLOR - MIDDLE 

def provide_middle(string)
  if string == " " || string.empty?
    puts "This was empty. Please provide a phrase or sentence."
  elsif string.include?(" ")
    middle = string.split.count / 2
    string.split[middle]
  else 
    return string
  end   
end 


p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'
p penultimate(" ")
p penultimate("word")

p provide_middle('last word here') 
p provide_middle('Launch School is great too!')
p provide_middle(" ")
p provide_middle("word")
  