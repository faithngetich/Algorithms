# Check if first string is a rotated version of second string

# Constrints
# 1. does whitespace/ case matter
# Return value? What to return if invalid/valid input
# 2. special characters matter--

# Testcase
# 'the baby blue fish!'
# ' hsif eulb'
# ['fish  blue baby 'the'][]
# 'nuuuininin'
# ''

# str1[0] #== str2[-1]

def rotated(str1, str2)
  s1=str1.length
  s2=str2.length
  p s1
  len = str1 + str1

  if  s1 == 0 or s2 == 0 or s1 != s2
    false
  else len.scan(str2).length > 0
    true
  end
end

p rotated('', 'mm')
