#!/usr/bin/ruby
# a ^ a = 0
# a ^ 0 = a

def single_number(nums)
    ans=0
    for i in nums
        ans^=i
    end
    return ans
end
