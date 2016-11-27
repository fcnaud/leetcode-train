#!/usr/bin/ruby
#
# @param {Integer[]} nums1
# @param {Integer} n
# @param {Integer[]} nums2
# @param {Integer} m
# @return void
#

def merge(nums1, n, nums2, m)
  ind = n+m-1
  ind1 = n-1
  ind2 = m-1

  while ind>=0 && ind1>=0 && ind2>=0
    if nums1[ind1] > nums2[ind2]
      nums1[ind] = nums1[ind1]
      ind1-=1
    else
      nums1[ind] = nums2[ind2]
      ind2-=1
    end
    ind-=1
  end

  if ind2>=0
    while ind2>=0
      nums1[ind2] = nums2[ind2]
      ind2-=1
    end
  end

end
