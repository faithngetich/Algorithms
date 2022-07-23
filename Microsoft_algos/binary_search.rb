def binary_search(arr, key)
  lo = 0
  hi = arr.length-1
  while lo <= hi
    mid = (lo + hi)/2
    if key < arr[mid]
      hi = mid - 1
    elsif key > arr[mid]
      lo = mid + 1
    else
      return mid
    end
  end
  -1
end

p binary_search([3,5,7,8,9], 9)
