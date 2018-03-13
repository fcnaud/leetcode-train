# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}

def find_median_sorted_arrays(nums1, nums2)
  len1, len2 = nums1.size, nums2.size
  len = len1 + len2
  index1 = 0
  index2 = 0

  a, b = 0, 0
  (0..len/2).each do |index|
    a = b
    if index1 < len1 && index2 < len2
      if nums1[index1] < nums2[index2]
        b = nums1[index1]
        index1 += 1
      else
        b = nums2[index2]
        index2 += 1
      end
    elsif index1 < len1
      b = nums1[index1]
      index1 += 1
    else
      b = nums2[index2]
      index2 += 1
    end
  end
  if len%2==0
    return (a+b)/2.0
  else
    return b
  end
end