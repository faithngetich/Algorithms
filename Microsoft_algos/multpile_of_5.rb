def mul(n)
  a=0
  b=0
  if n <= 5
    a = 1
    b = n-a
    return a,b
  else
    a = 9
    b = n- a
    if a % 5 == 0 && b % 5 == 0
      a += 1
      b -= 1
      return a, b
    else
      return a, b
    end
  end
end

p mul(6)