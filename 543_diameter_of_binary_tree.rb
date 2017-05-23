class TreeNode
  attr_accessor :par, :vis
end

def dfs_and_link_to_par(root, cur_path)
  return nil if !root

  root.vis = false
  root.left.par = root if root.left
  root.right.par = root if root.right

  ret = [cur_path, root]
  tmp_ret = dfs_and_link_to_par(root.left, cur_path+1)
  ret = tmp_ret if tmp_ret && tmp_ret.first > ret.first
  tmp_ret = dfs_and_link_to_par(root.right,cur_path+1)
  ret = tmp_ret if tmp_ret && tmp_ret.first > ret.first

  ret
end

def dfs(root, cur_path)
  return nil if !root || root.vis
  root.vis = true

  ret = cur_path
  tmp_ret = dfs(root.left, cur_path+1)
  ret = tmp_ret if tmp_ret && tmp_ret > ret
  tmp_ret = dfs(root.right, cur_path+1)
  ret = tmp_ret if tmp_ret && tmp_ret > ret
  tmp_ret = dfs(root.par, cur_path+1)
  ret = tmp_ret if tmp_ret && tmp_ret > ret

  root.vis = false
  ret
end

def diameter_of_binary_tree(root)
  return 0 if !root

  tmp = dfs_and_link_to_par(root, 0)
  dfs(tmp.last, 0)
end