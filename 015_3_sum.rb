#!/usr/bin/ruby
# @param {Integer[]} nums
# @return {Integer[][]} 

def three_sum(nums)
  ret = Array.new
  num = nums.sort
  p num

  current = 0
  while current+2<num.length && num[current]<=0
    if current>0 && num[current]==num[current-1]
      break
    end

    st = current+1
    ed = num.length-1

    while st<ed
      aim = 0 - num[current]
      tmp = num[st]+num[ed]
      p current
      p st
      p ed
      p "------"
      if tmp<aim
        st+=1
      elsif tmp>aim
        ed-=1
      else
        ret.push(Array.new << num[current] << num[st] << num[ed])
        st+=1
      end
    end

    current+=1
  end

  return ret
end


p (three_sum [-1,0,1,2,-1,-4])

