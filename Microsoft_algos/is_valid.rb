def is_valid?(s)
  stack = []
  brackets = {'[' => ']', '{' => '}', '(' => ')'}
  lefts = brackets.keys
  rights = brackets.values
  s.each_char do |b|
    if lefts.include? b
      stack.push b
    elsif rights.include? b
      return false if stack.empty?
      return false unless brackets[stack.pop].eql? b
    end
    # remove first char and insert in the stack
    # enter next then check if it's the reverse of the last element in the stack 
    # if it is the remove last 2 elements... until the checker is empty
    # if the 
  end
  stack.empty?

  #method2 is still wrong
#   stack = []
#   s.each_char do |b|
#     case b
#     when "("
#     stack << b
#     when ")"
#       return false if stack.empty?
#       stack.pop
#     end
#   end
#   return true
# end

p is_valid?(')({}ngmf(')