#!/usr/bin/ruby
#
# @param {String} s
# @return {String}
#

def isVowel(v)
  "aeiouAEIOU".include?(v)
end

def reverse_vowels(s)
  l = 0
  r = s.length-1

  while l<r
    if !isVowel(s[l])
      l+=1
    elsif !isVowel(s[r])
      r-=1
    else
      s[l], s[r] = s[r], s[l]
      l+=1
      r-=1
    end
  end

  return s
end
