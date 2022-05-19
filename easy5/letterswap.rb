def swap(string)
  string_array = string.split
  middle = "" 
  reversed = string_array.map do |item|
      middle = item.delete_prefix(item[0]).delete_suffix(item[-1])
      if item.size > 1
        item[-1] + middle + item[0]
      else
        item
      end
  end 
  reversed.join(" ")
end 

 p swap('Abcde') == 'ebcdA'
 p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
 p swap('a') == 'a'
    
