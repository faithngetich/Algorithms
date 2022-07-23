# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    h = {}
    arr = []
    nums.each do ||
    end

    # hash = {}
    # arr = []
    # nums.each_with_index do |value, index|
    #     y = target - value # 6
    #     # require 'pry'; binding.pry
    #     if hash.key?(value)
    #         arr << hash[value]
    #         arr << index
    #         require 'pry'; binding.pry
    #         return arr
    #     else
    #         hash[y] = index # {6=>0, 5:1}
    #         # {6=>0, 4=>1}
    #     end
    # end
end

p two_sum([3,5,6,8,0], 9)


