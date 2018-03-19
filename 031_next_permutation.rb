# 思路错误

# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.

def next_permutation(nums)
  flag = false
  index = nums.size-1

  swap_from, swap_to = 0, -1
  while index>0
    tmp_index = index-1
    while tmp_index>swap_to
      if nums[index]>nums[tmp_index]
        swap_from = index
        swap_to   = tmp_index
        flag = true
        break
      end
      tmp_index-=1
    end
    index-=1
  end

  if flag
    nums[swap_from], nums[swap_to] = nums[swap_to], nums[swap_from]
    tmp_nums = nums[swap_to+1..nums.size-1].sort
    (0...tmp_nums.size).each do |index|
      nums[swap_to+1+index] = tmp_nums[index]
    end
  else
    nums.reverse!
  end
end

p next_permutation([1, 3, 2])

