def find_max_consecutive_ones(nums)
  nums.map(&:to_s).join.split('0').map(&:size).max or 0
end