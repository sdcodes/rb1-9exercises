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
  
star(7)
star(9)