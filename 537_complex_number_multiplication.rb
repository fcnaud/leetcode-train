# @param {String} a
# @param {String} b
# @return {String}

def complex_number_multiply(a, b)
  r_1, p_1 = a.split('+').map { |str| str.to_i }
  r_2, p_2 = b.split('+').map { |str| str.to_i }
  r_res = r_1*r_2 - p_1*p_2
  p_res = r_1*p_2 + r_2*p_1
  r_res.to_s+'+'+p_res.to_s+'i'
end

p complex_number_multiply "1+1i", "1+1i"