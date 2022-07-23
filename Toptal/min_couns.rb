def find_min_coins(s, n)
  if n == 0
    0
  end

  if n < 0
    # return infinity
    # Float::INFINITY
  end

  coins = Float::INFINITY

  0.upto(s.size) do |i|
    res = find_min_coins(s, n-s[i])
    if res != Float::INFINITY
      coins = min(coins, res+1)
    end
  end
  coins
end

puts find_min_coins([1,3,5,7], 18)