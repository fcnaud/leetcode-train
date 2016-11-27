def remove_nth(head, n)
  if !head
    return nil, 1
  end

  head.next, cur = remove_nth(head.next, n)

  if cur==n
    return head.next, cur+1
  else
    return head, cur+1
  end
end

def remove_nth_from_end(head, n)
  head, _ = remove_nth(head, n)
  return head
end
