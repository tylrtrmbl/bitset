
# I just want it to spit out SSPADD for my current use case. There is only one "formula", but I'll make it extensible.

def get_bits(number_of_bits_you_have, fosc, target_speed, formula) # returns SSPADD
  case formula
  when :master
    result = (fosc / (4 * target_speed)) - 1
  else
    # bad news bears
  end
  if result >= 2 ** number_of_bits_you_have
    # bad news bears
  end
  result
end

result = get_bits(7, 40e6, 10e3, :master)
puts result
