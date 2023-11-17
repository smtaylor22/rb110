=begin

Problem:
  Input: string
  Output: print result of calculations

  Rules:
    Implicit:
    Explicit:


Examples/Test Cases


Data Structure:


Algorithm:
initialize global variable `REGISTER` setting value to 0
intialize global `STACK` array 

define method `minilang` taking 1 string input parmeter `program`
  split `program` string into an array
  
  loop over each word of `program array`
    case statement for executing each different method matching to the string of current element
    
    when `PUSH`
    when `Add`
      ... etc


    else it is a number
      run command `n`


define method `push` which takes no input parameters
    append current value of register to stack

define method `add` which takes no input parameters
    pop last element in stack array and perform register + popped value
     set register to result of above

define method `sub` which takes no input parameters
      pop last element in stack and perform register - popped value
      set register to this result

define method `mult`
      pop last element in stack and perform register * popped value
      set register to this result

define method `div`
  pop last element in stack and perform register / popped value
      set register to this result

define method `mod`
  pop last element in stack and perform register `Integer#divmod` popped value
      set register to remainder of result (result[1])

define method `pop`
      pops the last element in the stack and place it itn the register

define method `print`
      puts the register value

define method `n` takes 1 input argument
      convert input argument to string
      assign this result to the register
=end



def minilang(program_string)
  register = 0
  stack = []

  program = program_string.split
  program.each do |command|
    case command
    when 'PUSH'
      push(register, stack)
    when 'ADD'
      register = add(register, stack)
    when 'SUB'
      register = sub(register, stack)
    when 'MULT'
      register = mult(register, stack)
    when 'DIV'
      register = div(register, stack)
    when 'MOD'
      register = mod(register, stack)
    when 'POP'
      register = pop(register, stack)
    when 'PRINT'
      print(register)
    else
      register = n(command, register)
    end
  end
end


def push(register, stack)
  stack << register
end

def add(register, stack)
  register += stack.pop
end

def sub(register, stack)
  register -= stack.pop
end

def mult(register, stack)
  register *= stack.pop
end

def div(register, stack)
  register = register / stack.pop
end

def mod(register, stack)
  register = register.divmod(stack.pop)[1]
end

def pop(register, stack)
  register = stack.pop
end

def print(register)
  puts register
end

def n(num, register)
  register = num.to_i
end
  
minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)