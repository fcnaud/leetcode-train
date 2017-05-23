def missing_number(nums)
  (nums.size+1)*nums.size/2 - nums.reduce(:+)
end

p missing_number([0,1,2,3,5])
p missing_number([0])