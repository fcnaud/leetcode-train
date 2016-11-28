#!/usr/bin/ruby
#
# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
#
# 直接调函数比我自己写快多了。。。

def remove_element(nums, val)
  nums.delete(val)
  nums.length
end


