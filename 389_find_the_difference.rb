#!/usr/bin/ruby
#
# @param {String} s
# @param {String} t
# @return {Character}

def find_the_difference(s, t)
  tmp = t.chars.sort
  s.chars.sort.each_with_index { |ch, ind| return tmp[ind] if ch!=tmp[ind] }
  return tmp[-1]
end
