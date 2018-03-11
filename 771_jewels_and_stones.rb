# @param {String} j
# @param {String} s
# @return {Integer}

def num_jewels_in_stones(j, s)
  ref = Hash.new
  j.each_char do |jewel|
    ref[jewel] = true
  end

  s.chars.select do |my_jewel|
    ref[my_jewel]
  end .size
end