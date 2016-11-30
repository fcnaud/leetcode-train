def is_anagram(s, t)
  hs = Hash.new(0)
  s.chars.map { |i| hs[i]+=1 }
  ts = Hash.new(0)
  t.chars.map { |i| ts[i]+=1 }
  ('a'..'z').map { |i|
    return false if hs[i]!=ts[i]
  }
  return true
end
