def title_to_number(s)
  ind = s.length - 1
  tmp = 1
  ret = 0

  while ind>=0
    ret += (s[ind].ord-'A'.ord+1)*tmp
    tmp *= 26
    ind -= 1
  end

  return ret
end

p title_to_number("B")
