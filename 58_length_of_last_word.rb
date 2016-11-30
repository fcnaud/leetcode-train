def length_of_last_word(s)
  ret = s.split(' ')
  return 0 if ret.length==0
  ret[-1].length
end
