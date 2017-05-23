def find_pairs(nums, k)
  return 0 if k<0

  if k==0
    cnt = {}
    ans = 0
    nums.each do |val|
      if !cnt[val]
        cnt[val]=1
      elsif cnt[val]==1
        ans+=1
      end
    end
    return ans
  end

  (nums.map do |val|
    val-k
  end & nums).size
end