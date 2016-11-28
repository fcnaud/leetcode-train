#!/usr/bin/ruby
#
# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
#

def remove_element(nums, val)
  cnt = 0
  ind = 0

  while ind<nums.length
    if nums[ind] != val
      nums[cnt] = nums[ind]
      cnt+=1
    end
    ind+=1
  end

  return cnt
end


