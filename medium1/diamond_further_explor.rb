STAR = "*"
SPACE = " "
def diamond(odd_integer)
  center_width = (odd_integer - 1) / 2
  1.upto(odd_integer - 1) do |num|
    if num.odd? && num > 1
      puts (SPACE * center_width) + STAR + (SPACE * (num - 2)) + STAR 
      center_width -= 1
    elsif num.odd? && num == 1
      puts (SPACE * center_width) + STAR
      center_width -= 1
    end
  end 
  
  odd_integer.downto(1) do |num|
    if num.odd? && num > 1
      puts (SPACE * center_width) + STAR + (SPACE * (num - 2)) + STAR 
      center_width += 1
    elsif num.odd? && num == 1
      puts (SPACE * center_width) + STAR
      center_width += 1
    end
        
    end
end 

diamond(1)
diamond(3)
diamond(5)
diamond(9)