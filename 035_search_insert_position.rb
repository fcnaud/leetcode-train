def binary_search(nums, target, l, r)
  #p "l: #{l} r:#{r} "
  return l if r<=l

  mid = (l+r)/2
  return mid if nums[mid] == target
  return binary_search(nums, target, l, mid) if nums[mid] >= target
  return binary_search(nums, target, mid+1, r)
end

def search_insert(nums, target)
  return nums.size if nums.size==0 || target>nums.last
  binary_search(nums, target, 0, nums.size-1)
end

p search_insert([1, 2, 3, 5, 6], 4)
p search_insert([1, 2, 3, 4], 5)
p search_insert([1, 2, 4, 5], 0)
p search_insert([1, 3, 5], 2)