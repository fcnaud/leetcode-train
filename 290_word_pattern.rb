def word_pattern(pattern, str)
  p2s = Hash.new
  s2p = Hash.new
  p = pattern
  s = str.split(' ')
  return false if p.length!=s.length
  (0...s.length).map {|ind|
    return false if (p2s[p[ind]]&&p2s[p[ind]]!=s[ind]) || (s2p[s[ind]]&&s2p[s[ind]]!=p[ind])
    p2s[p[ind]] = s[ind] if !p2s[p[ind]]
    s2p[s[ind]] = p[ind] if !s2p[s[ind]]
  }
  return true
end
