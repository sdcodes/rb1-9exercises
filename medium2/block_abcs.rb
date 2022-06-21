BLOCK = { "B" => "B:O", "O" => "B:O", "X" => "X:K", "K" => "X:K",
          "D" => "D:Q", "Q" => "D:Q", "C" => "C:P", "P" => "C:P",
          "N" => "N:A", "A" => "N:A", "G" => "G:T", "T" => "G:T",
          "R" => "R:E", "E" => "R:E", "F" => "F:S", "S" => "F:S",
          "J" => "J:W", "W" => "J:W", "H" => "H:U", "U" => "H:U",
          "V" => "V:I", "I" => "V:I", "L" => "L:Y", "Y" => "L:Y", 
          "Z" => "Z:M", "M" => "Z:M" }
def block_word?(string)
  array = []
  string.each_char do |char|
    if BLOCK.include?(char.upcase)
      array << BLOCK[char.upcase]
    end 
  end 
   array == array.uniq ? true : false
end 

# OTHER WAY

def block_word?(provided_word)
  word_blocks = { ["B", "O"] => 0, ["X", "K"] => 0, ["D", "Q"] => 0, 
                  ["C", "P"] => 0, ["N", "A"] => 0, ["G", "T"] => 0,
                  ["R", "E"] => 0, ["F", "S"] => 0, ["J", "W"] => 0,
                  ["H", "U"] => 0, ["V", "I"] => 0, ["L", "Y"] => 0,
                  ["Z", "M"] => 0 }

  provided_word.each_char do |ch|
    word_blocks.each_pair do |key, value|
      if key.include?(ch)
        word_blocks[key] += 1
      end 
    end 
  end 
  word_blocks.all? {|key, value| value <= 1 }
end 
      
p block_word?('BATCH') 
p block_word?('BUTCH') 
p block_word?('jest')      
    
    
    

# input: string
# output: boolean
# with block, can only use one word in block. cannot repeat block
# must iterate over each letter in string
# letter must be compared to previous ones. if same block, return false
# must be able to 'switch' block to unavailable/false once letter is used