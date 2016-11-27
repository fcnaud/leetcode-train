def reverse_list(head)
  if !head
    return head
  end

  pre = nil
  cur = head
  while cur
    tmp = cur.next
    cur.next = pre
    pre = cur
    cur = tmp
  end

  return head=pre
end
