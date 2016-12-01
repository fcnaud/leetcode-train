# @param {String} s
# @return { Integer }
#

def longest_palindrome(s)
  cnt = Hash.new(0)
  s.chars.map { |ch| cnt[ch]+=1 }

  hasOne = false
  ans    = 0
  cnt.each_value { |v|
    ans += v/2*2
    hasOne = true if v%2==1
  }
  hasOne ? ans+1 : ans
end

p longest_palindrome("abccccdd")
