# Write a method solution that, given an integer N, returns the smallest number with the same no. of digits. You can ssume N is between 1 and 10^9(a billion)
# Example
# -------
# Given N=125, the method should return 100. Given N=10, the method should return 10. Given N=1, the method should return 0

def solution(n)
  if n < 10
    0
  else
    lowest_no = Math.log10(n).floor
    10**lowest_no
  end
end

p solution(1234444)