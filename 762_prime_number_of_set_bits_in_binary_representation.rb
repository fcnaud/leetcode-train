# @param {Integer} l
# @param {Integer} r
# @return {Integer}

def count_word_one(num)
  res = 0
  while num >0
    res += (num%2)
    num /= 2
  end
  res
end

def count_prime_set_bits(l, r)
  prime_table = Array.new(33, true)
  prime_table[0] = prime_table[1] = false
  (2...prime_table.size).each do |cur|
    if prime_table[cur]
      step = cur
      cur += step
      while cur < prime_table.size
        prime_table[cur] = false
        cur += step
      end
    end
  end


  (l..r).select do |cur|
    prime_table[count_word_one(cur)]
  end .size
end