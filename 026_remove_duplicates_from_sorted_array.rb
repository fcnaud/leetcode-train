#!/usr/bin/ruby
#
# @param {Integer[]} nums
# @return {Integer}
#

def remove_duplicates(nums)
  return 0 if nums.length==0

  cnt = 1
  ind = 1

  while ind<nums.length
    if nums[cnt]!=nums[ind]
      nums[cnt] = nums[ind]
      cnt+=1
    end
    ind+=1
  end

  return cnt
end

