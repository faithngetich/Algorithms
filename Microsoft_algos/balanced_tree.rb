#         5
#     /      \
#   4           5
#  / \         /   \
# 2   6      40       96
#                  /   \


#                4
#                        5
#                      /   \
#                     2     7
#                          /  \
#                        6     85

def BST_is_valid?(node, min=-1.0/0.0, max=1.0/0.0)
  # (5, -inf, inf)

  until node.left.nil? && node.right.nil?
    if min > node.value || max < node.value
      return false
    else
      BST_is_valid?(node.left, min, node.value)
      #[]
      BST_is_valid?(node.right, node.value, max)
      #[]
    end
  end
  return true
end

class Node
  def initialize(value)
    @value = value
    @left = nil
    @right = nil
  end
end
def height(root)
# base condition when binary tree is empty 
if root.nil?
    return 0
return max(height(root.left), height(root.right)) + 1
max()
end

# [height(7), height(nil)),]

Class Node
  attr_accesor :value, :left, :right
  def initialize(value=nil)
    @value = value
    left = left
    right = right
  end
end

Class BinarySearchTree
  attr_accesor :root_node

  def initialize(root_value = nil)
    @root_node = Node.new(root_value)
  end

  def insert(node, value)
    if node.value == value
      return node
    elsif value < node.value
      insert(node.left, value)
    elsif value > node.value
      insert(node.right, value)
    else
      return node = Node.new(value)
    end
  end
end

