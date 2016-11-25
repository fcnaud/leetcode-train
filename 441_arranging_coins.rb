#!/usr/bin/ruby
# @param {Inteter}
# @reutrn {Integer}
#

def getSum(n)
  (1+n)*n/2
end

def arrange_coins(n)
  l = 0
  r = n

  while l<r
    mid = (l+r+1) / 2
    sum = getSum(mid)
    if sum == n
      return mid
    elsif sum < n
      l = mid
    else
      r = mid-1
    end
  end

  return l
end

p arrange_coins(8)
