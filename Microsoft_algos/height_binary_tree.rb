# 5
# /   \
# 55     7
#    /    \
#   5     85

class Node
    attr_accessor :left, :right, :value
    def initialize(value=nil)
      value = value
      left = nil
      right = nil
    end
end
def height(root)
  # base condition when binary tree is empty 
  if root.nil?
      return 0
  end
  max(height(root.left), height(root.right)) + 1
end
# []
#    7
#                        5
#                      /   \
#                     55     7
#                         /    \
#                        5     85

def max(a,b)
  a>b ? a : b
end

  
root = Node.new(9)
root.left = Node.new(6)
root.right = Node.new(7)
root.left.left = Node.new(5) 
root.left.right = Node.new(5) 
root.right.left = Node.new(6) 
root.left.left.left = Node.new(7) 

p height(root)
# [height(55), height(7), ]