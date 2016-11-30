
def calc_left_leaves(root, isLeft)
  return 0 if !root
  if !root.left && !root.right
    return ifLeft ? root.val : 0
  end
  calc_left_leaves(root.left, true) + calc_left_leaves(root.right, false)
end

def sum_of_left_leaves(root)
  calc_left_leaves(root, false)
end
