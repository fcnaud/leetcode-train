#!/usr/bin/ruby
#
#

def remove_elements(head, val)
  return head if !head
  
  head.next = remove_elements(head.next, val)
  
  head.val==val ? head.next : head

end
