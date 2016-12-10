def is_isomorphic(s, t)
  s2t = Hash.new
  t2s = Hash.new
  (0...s.length).map {|ind|
    return false if (s2t[s[ind]]&&s2t[s[ind]]!=t[ind]) || (t2s[t[ind]]&&t2s[t[ind]]!=s[ind])
    s2t[s[ind]] = t[ind] if !s2t[s[ind]]
    t2s[t[ind]] = s[ind] if !t2s[t[ind]]
  }
  return true
end
