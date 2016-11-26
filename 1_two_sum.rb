#!/usr/bin/ruby

class Node
    @num=0
    @ind=0
    attr_reader :num, :ind
    def initialize(_num, _ind)
        @num=_num
        @ind=_ind
    end
end

def two_sum(nums, target)
    
    data = Array.new
    for i in (0..nums.length-1)
        data.push(Node.new(nums[i], i))
    end
    data.sort! { |a,b| a.num<=>b.num }

    st  = 0
    en  = data.length - 1

    while true
        cur = data[st].num + data[en].num
        if cur==target
            break
        elsif cur<target
            st+=1
        else
            en-=1   
        end
    end

    return [data[st].ind, data[en].ind]
end

puts two_sum [1,2,3,4,51,32,45], 4

