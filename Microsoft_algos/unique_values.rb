# Find unique values in an array
def unique(arr)
  return 0 if arr.empty?
  h={}
  uniq_arr = []
  arr.each_with_index do |a, index|
    if h.key?(a)
      h[a] += 1
    else
      h[a] = 1
    end
  end
  # add elements with value 1 to the unique array
  h.each do |k, v|
    if v == 1
      uniq_arr << k
    end
  end
  uniq_arr



  # h = {}
  # uniq_arr = []
  # arr.each_with_index do |a, index|
  #   if !h.key?(a)
  #     h[a] = index
  #   else
  #     uniq_arr
  # end
  # uniq_arr
end

p unique([10,10, 1, 30, 40, 40])

# 10 : 0, 20:1, 1:2


# 5,6,7,1,2,3