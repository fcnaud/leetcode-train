def max_sub_array(nums)
  ret = nums[0]
  sum = nums[0]
  (1...nums.size).each do |ind|
    sum = 0 if sum<0
    sum += nums[ind]
    ret = [ret, sum].max
  end
  ret
end