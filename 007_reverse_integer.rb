#!/usr/bin/ruby
#
# @param {Integer} x
# @return {Integer}
#

def reverse(x)
  
  ret = (x<0 ? -1 : 0) * x.abs.to_s.reverse.to_i

  if ret>2147483647 || ret<-2147483648
    ret = 0
  end

  return ret
end

p reverse(-12342)
