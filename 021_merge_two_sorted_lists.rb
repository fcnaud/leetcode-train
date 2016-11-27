#!/usr/bin/ruby
#
#

def merge_two_lists(l1, l2)
  head = ListNode.new(0)
  ret = head

  while l1&&l2
    if l1.val < l2.val
      ret.next = l1
      ret = ret.next
      l1 = l1.next
    else
      ret.next = l2
      ret = ret.next
      l2 = l2.next
    end
  end
  
  if l1
    ret.next = l1
    ret = ret.next
  end
  if l2
    ret.next = l2
    ret = ret.next
  end

  return head.next
end
