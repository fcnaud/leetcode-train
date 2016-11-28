#!/usr/bin/ruby
#
# @param {ListNode} head
# @return {ListNode}
# 

def swap_pairs(head)
  return head if !head

  secd = head.next

  return head if !secd

  head.next = swap_pairs(secd.next)
  secd.next = head
  head      = secd

end
