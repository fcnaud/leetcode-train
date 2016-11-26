# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}

def calc(l1, l2, rema)
    if l1 && l2
        tmp = l1.val + l2.val + rema
        ret = ListNode.new(tmp%10)
        ret.next = calc(l1.next, l2.next, tmp/10)
    elsif l1
        if rema==0
            ret = l1
        else
            tmp = l1.val + rema
            ret = ListNode.new(tmp%10)
            ret.next = calc(l1.next, nil, tmp/10)
        end
        
    elsif l2
        if rema==0
            ret = l2
        else
            tmp = l2.val + rema
            ret = ListNode.new(tmp%10)
            ret.next = calc(nil, l2.next, tmp/10)
        end
    else
        if rema==0
            ret = nil
        else
            ret = ListNode.new(rema%10)
            ret.next = calc(nil, nil, rema/10)
        end
    end
    
    return ret
end

def reverse(list)
    pre = list
    cur = pre.next 
    pre.next = nil
    
    while cur!=nil
        tmp = cur
        cur = cur.next
        
        tmp.next = pre
        pre = tmp
    end  
    
    return pre
end

def add_two_numbers(l1, l2)
    #l1 = reverse(l1)
    #l2 = reverse(l2)
    
    return calc(l1, l2, 0)
end