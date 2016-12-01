def contains_nearby_duplicate(nums, k)
  ind = Hash.new(-1)

  nums.each_with_index { |val, i|
    if ind[val] >= 0
      return true if i-ind[val]<k
    end
    ind[val] = i
  }

  return false
end
