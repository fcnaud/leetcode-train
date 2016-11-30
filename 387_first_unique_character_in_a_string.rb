def first_uniq_char(s)
  cnt = Hash.new(0)
  ind = Hash.new(0)
  (0...s.length).map { |i|
    ind[s[i]] = i if cnt[s[i]]==0
    cnt[s[i]]+= 1
  }
  ret = -1
  ('a'..'z').map { |ch|
    if cnt[ch]==1
      ret=ind[ch] if ret==-1 || ind[ch]<ret
    end
  }
  return ret
end
