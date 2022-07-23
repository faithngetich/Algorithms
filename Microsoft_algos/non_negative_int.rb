#2 A non-negative integer variable V is given. There are two actions available that modify its value:
#  - if V is odd, subtract 1 from it;
#  - if V is even, divide it by 2

# These actions are performed until the value V becomes 0.
# Example if V initally contains value 28, it will become 0 after seven steps
# --------
# - V contains value 28, which is even: divide by 2 and obtain 14;
# - V contains value 14, which is even: divide by 2 and obtain 7
# - V contains value 7, which is odd: subtract 1 and obtain 6;
# - V contains 6, which is even: divide by 2 and obtain 3;
# - V contains 3, which is odd: subtract 1 and obtain 2;
# - V contains 2, which is even: divide by 2 and obtain 1;
# - V contains 1, which is odd: subtract 1 and obtain 0;

# Write a method solution that, given zero-indexed string S consisting of N characters containing a binary representation of the initial value of variable V, returns the number of steps after which the value of V will become 0, as described above.

# For example, given string S="011100" the method should retunr 7, because string S represents the number 28 and 28 becomes 0 after seven steps, as explained above.

# Write an efficient algorith for the following assumptions:
# - N is an integer within the range[1..1,000,000];
# - string S consists only of characters "0" and/or "1";
# - the binary representation is big-endian, i.e the first character of string S corresponds to the most significant bit;
# - the binanry representation may contain leading zero.


def solution(s)
  start=0
  steps=0
  last=s.size - 1
  0.upto(s.size) do |char|
    start = char
    break char if s[char] == "1"
  end

  while start < last
    if s[last] == "1"
      steps += 2
      last -= 1
    else
      steps += 1
      last-= 1
    end
  end

   steps+= 1 if s[start] == "1"

  steps
end

puts solution("011100")