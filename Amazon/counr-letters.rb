def count(str)
  h = {}
  st = ''
  str.each_char do |s|
    if h.key?(s)
      h[s] = h[s] + 1
    else
      h[s] = 1
    end
  end
  h.each do |k,v|
    st << v.to_s << k
  end
  st


  # uncompressed do |str|
  #   puts str.chars.chunk{|e| e}.map {|e| "#{e[1].length}#{e[0]}"}.join
  # end
end


p count("wwwwaaadexxxxxxywww")