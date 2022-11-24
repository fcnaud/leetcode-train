## 因为这道题是二叉搜索树，所以可以利用特性这么求

def lowest_common_ancestor(root, p, q)
  if root.val<p.val && root.val<q.val
    return lowest_common_ancestor(root.right, p, q)
  elsif root.val>p.val && root.val>q.val
    return lowest_common_ancestor(root.left,  p, q)
  else
    return root
  end
end


