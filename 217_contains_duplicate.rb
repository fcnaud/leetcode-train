def contains_duplicate(nums)
  cnt = Hash.new(0)
  nums.map { |i|
    return true if cnt[i]>0
    cnt[i]+=1
  }
  return false
end
