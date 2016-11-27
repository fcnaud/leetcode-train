#!/usr/bin/ruby
# @param {Integer[]} nums1 
# @param {Integer[]} nums2
# @return {Integer[]}
#

def intersect(nums1, nums2)
  nums1.sort!
  nums2.sort!
  ind1 = 0
  ind2 = 0
  ret  = Array.new

  while ind1<nums1.length && ind2<nums2.length
    if nums1[ind1] == nums2[ind2]
      ret.push(nums1[ind1])
      ind1+=1
      ind2+=1
    elsif nums1[ind1] < nums2[ind2]
      ind1+=1
    else
      ind2+=1
    end
  end

  return ret
end
