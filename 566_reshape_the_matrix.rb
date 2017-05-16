def array_split(arr, n)
  result = []
  (0...arr.size/n).each do |i|
    result << []
    (0...n).each do |j|
      result.last << arr[i*n+j]
    end
  end
  result
end

def matrix_reshape(nums, r, c)
  curr, curc = nums.size, nums[0].size
  if (r*c) != (curr*curc)
    return nums
  end

  array_split(nums.reduce(:concat), c)
end