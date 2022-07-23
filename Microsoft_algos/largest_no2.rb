def largest_number(arr)
  extended_values = {}
  result = ''
  arr.map!{|a| a.to_s}

  max_length = arr.max.length + 1

  arr.each do |a|
    temp = a*max_length
    extended_values[temp] = a
  end

  extended_values.sort.reverse.each do |i|
    result << i[1]
  end
  result
end

p largest_number([54, 546, 548, 60])