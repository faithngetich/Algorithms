def biggest_no(a)
  return 0 if a.empty?

  a.map! do |i|
    i.to_s
  end

  0.upto(a.length-2).each do |i|
    1.upto(a.length-1).each do |j|
      if a[i] + a[j] < a[j] + a[i]
        a[i],a[j] = a[j],a[i]
      end
    end
  end
  a.join.to_i
end

# p biggest_no([3,345,9,3,3])
p biggest_no([3,345,9,3,3])

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

p largest_number([3,345,9,3,3])