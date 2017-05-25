def find_anagrams(s, p)
  return [] if s.size < p.size

  s_cnt = Array.new(26, 0)
  p_cnt = Array.new(26, 0)
  (0...p.size).each do |ind|
    s_cnt[s[ind].ord-'a'.ord]+=1
    p_cnt[p[ind].ord-'a'.ord]+=1
  end

  ret = Array.new
  ret << 0 if s_cnt==p_cnt

  (1..(s.size-p.size)).each do |ind|
    s_cnt[s[ind-1].ord-'a'.ord]-=1
    s_cnt[s[ind+p.size-1].ord-'a'.ord]+=1
    ret << ind if s_cnt==p_cnt
  end
  ret
end

p find_anagrams("fdasfadfasdfasdfasdfadfa", "ab")
p find_anagrams("abcbdab", "abc")