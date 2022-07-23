def num_pairs_divisible_by60(time)
  h = {}
  count = 0
  h[0] = 0
  time.each do |duration|
      d = duration % 60
      if 0 == d
          count += h[0]
          h[0] += 1
      else
          count += h[60-d] if h[60-d]
          h[d] ||= 0
          h[d] += 1
      end
  end
  count
end