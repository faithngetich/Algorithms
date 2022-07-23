def sum_to_zero(arr)
  count = 0
  0.upto(arr.length-1) do |i|
    (i+1).upto(arr.length-1) do |j|
      (j+1).upto(arr.length-1) do |k|
        # require 'pry'; binding.pry
        if arr[i] + arr[j] + arr[k] == 0
          count +=1
        end
      end
    end
  end
  count
end

p sum_to_zero([30,-40,-20,-10,40,0,10,5])