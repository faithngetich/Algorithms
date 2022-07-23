def duplicate_numbers(arr)
  if arr.length == 1
    1
  end
  i = 0

  (1...arr.size).each do |j|
    if arr[j] != arr[j+1]
      arr[i] = arr[j]
      i += 1
    end
  #   if arr[i] == arr[i-1]
  #     arr.delete(arr[0])
  #   end
  end
  arr[i] = arr[arr.size-1]
  i += 1
  return arr
  # arr
end

# for i in range(0, n-1): 
#   if arr[i] != arr[i+1]: 
#       arr[j] = arr[i] 
#       j += 1

# arr[j] = arr[n-1] 
# j += 1
# return j 
        # if len(nums) == 1:
        #     return 1

        # i = 0
        # for j in range(1, len(nums)):
        #     if (nums[i] != nums[j]):
        #         i += 1
        #         nums[i] = nums[j]

        # return i + 1

p duplicate_numbers([1,1,1,3,4,5,5,5,5,7,7,7,9,9])