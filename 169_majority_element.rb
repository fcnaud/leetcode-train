def majority_element(nums)
  cnt = Hash.new(0)
  aim = nums.length/2
  nums.map { |i| cnt[i]+=1 }
  ans, anscnt = 0, 0
  cnt.each { |key, value| 
    ans, anscnt = key, value if value > anscnt
  }
  return ans
end
