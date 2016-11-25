#!/usr/bin/ruby
#
# @param {String} num1
# @param {String} num2
# @return {String}
#

def add_strings(num1, num2)
  num1 = num1.reverse
  num2 = num2.reverse
  ret  = String.new

  i  = 0
  up = 0
  while i<num1.length && i<num2.length
    tmp = num1[i].ord + num2[i].ord + up - '0'.ord * 2
    up  = tmp / 10
    ret << (tmp%10+'0'.ord).chr

    i+=1
  end

  while i<num1.length
    tmp = num1[i].ord + up - '0'.ord
    up  = tmp / 10
    ret << (tmp%10+'0'.ord).chr
    i+=1
  end

  while i<num2.length
    tmp = num2[i].ord + up - '0'.ord
    up  = tmp / 10
    ret << (tmp%10+'0'.ord).chr
    i+=1
  end

  if up!=0
    ret << (up+'0'.ord).chr
  end

  return ret.reverse
end

p add_strings("11111", "9")
