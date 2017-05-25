class TreeNode
  attr_accessor :vis, :par
end

def dfs_and_link_par(root)
  return if !root
  if root.left
    dfs_and_link_par(root.left)
    root.left.par = root
  end
  if root.right
    dfs_and_link_par(root.right)
    root.right.par = root
  end
end

def lowest_common_ancestor(root, p, q)
  dfs_and_link_par(root)
  cur = p
  while cur
    cur.vis = true
    cur = cur.par
  end

  ret = q
  while ret
    break if ret.vis
    ret = ret.par
  end
  ret
end


