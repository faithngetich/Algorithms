# You are given two arrays (without duplicates) nums1 and nums2 where nums1’s elements are subset of nums2. Find all the next greater numbers for nums1's elements in the corresponding places of nums2.
# The Next Greater Number of a number x in nums1 is the first greater number to its right in nums2. If it does not exist, output -1 for this number.
# Example 1:
# Input: nums1 = [4,1,2], nums2 = [1,3,4,2]. 4, [1,3,4,2] next grreater than target
# Output: [-1,3,-1]
# Explanation:
#     For number 4 in the first array, you cannot find the next greater number for it in the second array, so output -1.
#     For number 1 in the first array, the next greater number for it in the second array is 3.
#     For number 2 in the first array, there is no next greater number for it in the second array, so output -1.
# Example 2:
# Input: nums1 = [2,4], nums2 = [1,200000,3,4].
# Output: [3,-1]
# Explanation:
#     For number 2 in the first array, the next greater number for it in the second array is 3.
#     For number 4 in the first array, there is no next greater number for it in the second array, so output -1.

# Constraints /questions
# ---------------------
# No duplicates
# The outputs
# How many elements can be in the array
###### What’s the min and the max value of each element?
# Does the next greater number have to be subsequent? Or is there no such requirement
# Does the array contain unique integers ?
# What should I return?
# What should I return if the input is invalid?

def greater(target, nums)
  # [8,6,7,2,5,1,9], 4 diff = 1, number = 5
  # [1,2,5,6,7,8,9]
  arr = [Float::INFINITY, Float::INFINITY] 
  nums.each do |num|
    if num > target # +
      diff = num - target # 4
      if diff < arr[-1]
        arr = [num, diff] # [8,4]
      end
    end
  end
  if arr[0] != Float::INFINITY
    return arr[0]
  else
    -1
  end
end

p greater(10, [8,6,7,2,5,1,9])


def next_greater_no(nums1, nums2)

  # output = []
  # nums = nums2.sort
  # 0.upto(nums1.length - 1).each do |a|
  #   greater = false
  #   0.upto(nums.length - 1).each do |b|
  #     if nums[b] > nums1[a]
  #       # if (nums1[i] == nums2[j] && j != nums2.length - 1) 
  #       output.push(nums2[b])
  #       greater = true
  #     end
  #   end
  #   if !greater
  #     output.push(-1)
  #   end
  # end
  # output

  # h = {}
  # stack = nums2.shift
  # nums2.each do |num|
  #   while stack and stack[-1] < num
  #     h[stack.pop] = num
  #   end
  #   stack.push(num)
  # end
  # nums1.each do |num|
  #   h[num, -1]
  # end

end


# hash_map = dict()
# stack = nums2[0:1]

# for num in nums2[1:]:
#     while stack and stack[-1] < num:
#         hash_map[stack.pop()] = num
#     stack.append(num)
# return [hash_map.get(num, -1) for num in nums1]


nums1 = [4,1,2], nums2 = [1,3,4,2]
# p next_greater_no(nums1, nums2)

# var holder = [];

#     for (var i = 0; i < findNums.length; i++) {
#       var hasNextGreaterElement = false;
#       // try to serach for next greater element
#       for (var j = nums.indexOf(findNums[i])+1; j < nums.length; j++) {
#         // handle case for next greater element is found
#         if (nums[j] > findNums[i]) {
#           holder.push(nums[j]);
#           hasNextGreaterElement = true;
#           break;
#         }
#       }
#       // handle case for next greater element is not found
#       if (!hasNextGreaterElement) {
#           holder.push(-1);
#       }
#     }
#     return holder;