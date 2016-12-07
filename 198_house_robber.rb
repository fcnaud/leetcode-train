def rob(nums)
  have = Array.new([0])
  nhave = Array.new([0])
  nums.each { |p|
    h = p + nhave[-1]
    nh = [nhave[-1], have[-1]].max
    have<<h
    nhave<<nh
  }
  [have[-1], nhave[-1]].max
end
