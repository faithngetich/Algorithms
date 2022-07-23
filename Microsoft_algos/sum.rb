# nums = [2,7,11,15], target = 9
# return -1 if none.
# for i in arr:
#   x = traget - i
#   for j in arr:
#     if x == j:
#       return i, j
# return -1 O(n^2) 
#                       |           |
# [12,6,2 25,3,4] 5 => [2,3,4,6,12,25] O(nlogn)

def nums(nums, target) # O(n)
  arr = []
  h = {}
  nums.each_with_index do |n, index|
    y = target - n # 7, 2
    if h.key?(n)
      arr << n
      arr << y
      return arr
    else
      h[y] = index
    end
  end
end

p nums([2,7,11,15],9)