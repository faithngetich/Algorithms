def longest_common_substr(strings)
  shortest = strings.min_by &:length
  # require 'pry'; binding.pry
  maxlen = shortest.length
  maxlen.downto(0) do |len|
    0.upto(maxlen - len) do |start|
      substr = shortest[start,len]
      return substr if strings.all?{|str| str.include? substr }
    end
  end
end

puts longest_common_substr(["Extra tv in bedroom",
                            "Extra tv in living room",
                            "Extra tv outside the shop"])