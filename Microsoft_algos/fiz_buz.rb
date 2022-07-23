1.upto(100) do |a|
  if a % 15 == 0
    p "fizzbuzz"
  elsif a % 3 == 0
    p "fiz"
  elsif a % 5 == 0
    p "buzz"
  else
    p a
  end
end
