# Given a string str of lowercase characters, the task is to remove duplicates and return a resultant string without modifying the order of characters in the original string.

# Examples:

# Input: str = "geeksforgeeks"
# Output: geksfor

# Input: str = "characters"
# Output: chartes

# Q-- I assume we dont have special characters, the length of the string, what should I return if the input is invalid or does not match the constraints-- nothing?, format of the output

def remove_duplicates(str)
  # h = {}
  # output = ''
  # counter = 0
  # str.each_char do |value|
  #   if h.key?(value)
  #     require 'pry'; binding.pry
  #     str.tr(value, '')
  #   else
  #     h[value] = index
  #   end
  # end
  # str

  # keeps track of visited characters 
  counter = 0
  
  i = 0
  size = str.length
  # str1 = list(str2); 

  # gets character value 
  x = 0

  # keeps track of length of resultant string 
  length = 0

  while i < str.size
      x = str[i].ord - 97

      # check if Xth bit of counter is unset 
      if ((counter & (1 << x)) == 0) 
          str[length] = chr(97 + x) 

          # mark current character as visited 
          counter = counter | (1 << x) 

          length += 1 
      i += 1 
        
  str2=''.join(str)
  return str2[0:length]
end

# bitwise left-shift

p remove_duplicates('characters')