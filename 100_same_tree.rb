def is_same_tree(p, q)
  return true  if !p && !q
  return false if !p || !q
  return false if p.val!=q.val
  return false if !is_same_tree(p.left, q.left)
  return false if !is_same_tree(p.right, q.right)
  return true
end
