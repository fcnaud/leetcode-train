#!/usr/bin/ruby
#@param  {Integer[]} nums
#@param  {Integer}   target
#@return {Integer}

def three_sum_closest(nums, target)
  ans = nums.take(3).reduce(:+)
  num = nums.sort

  cur = 0
  while cur<num.length-2
    aim = target - num[cur]
    st  = cur + 1
    ed  = num.length - 1

    while st<ed
      tmp = num[st] + num[ed]
      if (tmp-aim).abs < (target-ans).abs
        ans = tmp + num[cur]
      end

      if tmp < aim
        st+=1
      else
        ed-=1
      end
    end

    cur+=1
  end

  return ans

end

p three_sum_closest([-1, 2, 1, -4], 1)
