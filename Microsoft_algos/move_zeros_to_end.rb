def move_zeros_to_end(arr)
  if arr.size == 0
    return []
  end
  result = []
  count = 0
  for num in arr
    if num == 0
      count +=1
    else
      result.push(num)
    end
  end
  for i in 0...count
    result.push(0)
  end
  return result
end
arr = [1, 10, 0, 2, 8, 3, 0, 0, 6, 4, 0, 5, 7, 0]
puts move_zeros_to_end(arr)