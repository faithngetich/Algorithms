#
# Balanced strings are those who have equal quantity of 'L' and 'R' characters.
# Given a balanced string s split it in the maximum amount of balanced strings.
# Return the maximum amount of splitted balanced strings.

# eX 1
# Input: s = "RLRRLLRLRL"
# Output: 4
# Explanation: s can be split into "RL", "RRLL", "RL", "RL", each substring contains same number of 'L' and 'R'.

# EX 2
# Input: s = "RLLLLRRRLR"
# Output: 3
# Explanation: s can be split into "RL", "LLLRRR", "LR", each substring contains same number of 'L' and 'R'.
# Example 3
# Input: s = "LLLLRRRR"
# Output: 1
# Explanation: s can be split into "LLLLRRRR".
#
# A VAR COUNTER
# RLLLLRRRLR
#
# R = 3
# L = 3
#
# RLLLLRRRLR
#        ^
#
# IF R == L => BALANCED +1 (2)
#  reset R AND L
###


def max_balanced_string(str)
  balanced = 0
  r = 0
  l = 0
  return balanced if str.empty?
  str.each_char do |s|
    if s == 'R'
      r += 1
    else s == 'L'
      l += 1
    end
    if r == l
      balanced += 1
      r = 0
      l = 0
    end
  end
  balanced
end

p max_balanced_string('RLRRRLLRLL')
