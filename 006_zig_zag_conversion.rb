# @param {String} s
# @param {Integer} num_rows
# @return {String}

def convert(s, num_rows)
  if num_rows==1
    return s
  end
  if num_rows==2
    res = ""
    index = 0
    while index<s.size
      res += s[index]
      index += 2
    end
    index = 1
    while index<s.size
      res += s[index]
      index += 2
    end
    return res
  end

  res = ""
  index = 0
  step = num_rows + num_rows - 2
  while index < s.size
    res += s[index]
    index += step
  end
  (1...(num_rows-1)).each do |i|
    index = i
    while index < s.size
      res += s[index]
      res += s[index + step-i*2] if index + step-i*2 < s.size
      index += step
    end
  end
  index = num_rows-1
  while index < s.size
    res += s[index]
    index += step
  end
  res
end

p convert("PAYPALISHIRING", 3)