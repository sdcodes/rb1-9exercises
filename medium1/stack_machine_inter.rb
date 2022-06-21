def minilang(command_string)
  register = 0
  stack = []
  command_string.split(" ").each do |word|
    if "1234567890".include?(word) || word.to_i.negative?
      register = word.to_i
    elsif word == "PUSH"
      stack << register
    elsif word == "ADD"
      register += stack.pop
    elsif word == "SUB"
      register -= stack.pop
    elsif word == "MULT"
      register *= stack.pop
    elsif word == "DIV"
      register =   register / stack.pop
    elsif word == "MOD"
      register =   register % stack.pop
    elsif word == "POP"
      register = stack.pop
    elsif word == "PRINT"
      puts register
    end
  end 
end 

p minilang('PRINT')
p minilang('5 PUSH 3 MULT PRINT')
p minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
p minilang('5 PUSH POP PRINT')
p minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
p minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
p minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
p minilang('-3 PUSH 5 SUB PRINT')
p minilang('6 PUSH')
  

#the provided stirng needs to be split into individual "words". 
# each word is a command
# way to iterate over the comands and have them == final result
#