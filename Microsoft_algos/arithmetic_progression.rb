# AP - [1 ,4, 7, 11,13, 16]
#  constant_diff
#  compare cd if !=
#  O(n^2)
# only one glitch
# [] return valu
# no glitch for < than 3 >= 0
def arith(arr)
  # constant_diff = 0
  # 0.upto(arr.length - 2) do |i|
  #   1.upto(arr.length )
  # end
#   lo = 0
#   hi =  arr.length - 1
#   middle = arr.length / 2

#   # define diff
#   diff = arr[1] - arr[0]

#   while lo <= hi
#     if (arr[i] - arr[i-1] != diff
      
#   end
# end

# while i < j
#   if arr[middle] == n
#     return true
#   elsif arr[middle] < n
#     i = middle = i + j / 2
#     middle = i + j / 2
#   else
#     j = middle - 1
#     middle = i + j / 2
#   end
# end

# arr.sort() 
  
# After sorting, difference between 
# consecutive elements must be same. 
d = arr[1] - arr[0] 
(2...arr.length).step(d) do |i|
    if (arr[i] - arr[i-1] != d): 
        return 

return Tru


def BST_is_valid?(node, min=-1.0/0.0, max=1.0/0.0)

  until node.left.nil? && node.right.nil? 
    if min > node.value || max < node.value
      return false
    else  
      BST_is_valid?(node.left, min, node.value)  
      BST_is_valid?(node.right, node.value, max)
    end
  return true
end
