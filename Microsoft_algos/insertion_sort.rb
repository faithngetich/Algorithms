def insertion_sort_cards(arr)
  return arr if arr.length < 2
  (1...arr.size-1).each do |j|
    key = arr[j]
    i = j-1
    while i >= 0 && (arr[i] > key) do
      arr[i + 1] = arr[i]
      i -= 1
    end
    arr[i+1] =  key
  end
  arr
end

p insertion_sort_cards([4,2,5,3,1,6])

# return arr if arr.size < 2
# (1...arr.size-1).each do |i|
#   value = arr[i]
#   j = i-1
#   while j >= 0 && (arr[j] > value) do
#     arr[j + 1] = arr[j]
#     j = j-1
#   end
#   arr[j+1] = value
# end
# p arr