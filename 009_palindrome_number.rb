#!/usr/bin/ruby
#
# @param {Integer} x
# @return {Boolean}
#

def is_palindrome(x)
  x.to_s == x.to_s.reverse
end
