def star(integer)
  total_lines = integer / 2
  index = total_lines - 1
  stars = "*"
  space = " "
  total_lines.times do 
    puts (stars + (space * index ) + stars + (space * index ) + stars).center(integer)
    index -= 1
  end
  puts (stars * integer).center(integer)
  space = " "
  index = 0
  total_lines.times do 
    puts (stars + (space * index ) + stars + (space * index ) + stars).center(integer)
    index += 1
  end
end 

# ANOTHER METHOD


def star(integer)
  top_down_lines = integer / 2 
  spaces = " "
  stars = "*"
  top_down_lines.downto(1) do |num|
    puts (stars + (spaces * (num -1)) + stars + (spaces * (num - 1)) + stars).center(integer)
  end 
  puts stars * integer
  1.upto(top_down_lines) do |num|
    puts (stars + (spaces * (num -1)) + stars + (spaces * (num - 1)) + stars).center(integer)
  end
end 


  
star(7)
star(9)