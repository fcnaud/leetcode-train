def check(root, sum, aim)
  return false if !root

  sum+=root.val
  return true if !root.left && !root.right && sum==aim
  return true if root.left && check(root.left, sum, aim)
  return true if root.right && check(root.right, sum, aim)
  return false

end

def has_path_sum(root, sum)
  check(root, 0, sum)
end
