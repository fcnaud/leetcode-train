# @param {Integer} num
# @return {String}

def int_to_roman(num)
  ans = ''
  # 确定 M, 1000
  per = 1000
  while num >= per
    ans += 'M'
    num -= per
  end
  if num!=0 && per - num <= 100
    ans += 'CM'
    num -= per - 100
  end

  # 确定 D，500
  per = 500
  while num >= per
    ans += 'D'
    num -= per
  end
  if num!=0 && per - num <= 100
    ans += 'CD'
    num -= per - 100
  end

  # 确定 C，100
  per = 100
  while num >= per
    ans += 'C'
    num -= per
  end
  if num!=0 && per - num <= 10
    ans += 'XC'
    num -= per - 10
  end

  per = 50
  while num >= per
    ans += 'L'
    num -= per
  end
  if num!=0 && per - num <= 10
    ans += 'XL'
    num -= per - 10
  end

  per = 10
  while num >= per
    ans += 'X'
    num -= per
  end
  if num!=0 && per - num <= 1
    ans += 'IX'
    num -= per - 1
  end

  per = 5
  while num >= per
    ans += 'V'
    num -= per
  end
  if num!=0 && per - num <= 1
    ans += 'IV'
    num -= per - 1
  end

  per = 1
  while num >= per
    ans += 'I'
    num -= per
  end

  ans
end

p int_to_roman(3333)