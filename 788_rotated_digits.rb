# @param {Integer} n
# @return {Integer}

def rotated_digits(n)
  ref = [0, 1, 5, nil, nil, 2, 9, nil, 8, 6]
  judge = ->(n) do
    rotated_n_str = ''
    n.to_s.each_char do |ch|
      if ref[ch.to_i]
        rotated_n_str += ref[ch.to_i].to_s
      else
        return false
      end
    end
    (rotated_n_str.to_i != n)
  end

  (1..n).select do |num|
    judge.call(num)
  end .size
end

p rotated_digits 10