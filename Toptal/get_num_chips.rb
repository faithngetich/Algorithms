def get_num_chips(val)
  chips = [100,50,25,10,5,1]
  num_chips = 0
  chips.each do | chip |
    # require 'pry'; binding.pry
    num = val.div(chip)
    val -= (num*chip)
    num_chips += num
  end
  num_chips
end

p get_num_chips(273)