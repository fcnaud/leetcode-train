#!/usr/bin/ruby
#
# @param {Integer[]} nums
# @return {void}
#

def move_zeroes(nums)
  l, r = 0, 0

  while r<nums.length

    if nums[r]!=0
      nums[l], nums[r] = nums[r], nums[l]
      l+=1
    end
    r+=1

  end

end

