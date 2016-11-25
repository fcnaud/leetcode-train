#!/usr/bin/ruby
# @param {Integer[]} g
# @param {Integer[]} s
# @return Integer
#

def find_content_children(g, s)
  i, j, ans = 0, 0, 0
  g = g.sort!
  s = s.sort!

  while i<g.length && j<s.length
    if g[i] > s[j]
      j+=1
    else
      i+=1
      j+=1
      ans+=1
    end
  end

  return ans
end
