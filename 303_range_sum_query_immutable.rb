class NumArray

  @sum

  def initialize(nums)
    @sum = Array.new(nums.length, 0)
    @sum[0] = nums[0]
    (1...nums.length).each { |i|
      @sum[i] = @sum[i-1] + nums[i]
    }
  end

  def sum_range(i, j)
    @sum[j] - (i==0?0:@sum[i-1])
  end

end

array = [1,2,3,4,5]
numArray = NumArray.new(array)
p numArray.sum_range(0, array.length-1) == array.reduce(:+)