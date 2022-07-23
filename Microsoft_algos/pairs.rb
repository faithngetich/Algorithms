#3 An array a consisting of N integers is given. We are looking for pairs of elements of the array that are equal but that occupy different positions in the array. More formally, a pair of indices(P,Q) is called identical if 0<= P < Q<N and A[P] = A[Q]. The goal is to calculate the number of identical pairs of indices.

# For example, consider array A such that:
# A[0] = 3
# A[1] = 5
# A[2] = 6
# A[3] = 3
# A[4] = 3
# A[5] = 5

# There are four pairs of identical indices: (0,3),(0,4),(1,5) and (3,3). Note that pairs(2,2) and (5,1) are not counted since their first indices are not smaller than their second.

# Write a method: that, given an array A of N integers, returns the number of identical pairs of indices.

# If the number of identical pairs of indices is greater than 1000000000, the function should return 1,000,000,000.

# Example, given:
# A[0] = 3
# A[1] = 5
# A[2] = 6
# A[3] = 3
# A[4] = 3
# A[5] = 5
# the function should return 4, as explained above.

# def pairs(arr, n)
#     map={}
#     0.upto(n) do |a|
#       require 'pry'; binding.pry
#       arr.each_with_index do |v, index|
#         if(map.key?(v))
#           map[arr[a]] += 1
#         else
#           map[arr[a]] = 1
#         end
#       end
#     end
#     require 'pry'; binding.pry
#     ans=0
#     map.each do |k,v|
#       count=map[k]
#       ans+=(count*(count-1))/2
#     end
#     ans
# end

# soln2
# ----------
def pairs(arr)
  map = {}
  ans = 0
  0.upto(arr.size) do |i|
    value = arr[i]
    # arr.each do |value|
    if(map.key?(value))
      ans += map[value].length
      map[value].push(i)
    else
      map[value] = [i]
    end
    # end
  end
  ans
end
# for i in range(0 , n): 
#   for j in range(i + 1, n): 
puts pairs([3,5,6,3,3,5])

# => 8
# ans=0
# map={3=>2, 5=>3, 2=>2}
#  map.each do |k,v|
#    count=map[k]
#    ans+=(count*(count-1))/2
#  end
#  ans