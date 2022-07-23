def snail(array)
  array.empty? ? [] : array.shift + snail(array.transpose.reverse)
end

# def test input , expected
#   output = snail(input)
#   Test.expect(expected == output, "When snail(#{input}) expected #{expected} but got #{output}")
# end

# test( [
# [1,2,3,5],
# [4,5,6,50],
# [7,89,9,44],
# [83,8,98,34]],
#  [1, 2, 3, 6, 9, 8, 7, 4, 5])

p snail([[1,2,3],[4,5,6],[7,8,9]] )