def total_hamming_distance(nums)
  cnt = Hash.new(0)

  nums.each do |num|
    num.to_s(2).reverse.chars.each_with_index do |ch, index|
      cnt[index]+=(ch=='1'?1:0)
    end
  end

  ans=0
  cnt.each do |key, value|
    ans+=value*(nums.length-value)
  end

  ans

end

p total_hamming_distance([4, 14, 2])
