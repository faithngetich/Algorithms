def reverse_string(s)
  reversed_arr = []
  s.each do |i|
    reversed_arr.unshift(i)

  end
  reversed_arr
end

p reverse_string( ["h","e","l","l","o"])