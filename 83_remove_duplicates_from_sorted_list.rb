def delete_duplicates(head)
  return head if !head
  cur = head
  net = head.next
  while net
    if net.val!=cur.val
      cur.next = net
      cur = net
    end
    net = net.next
  end
  cur.next = net
  return head
end
