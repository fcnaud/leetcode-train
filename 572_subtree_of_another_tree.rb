# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} s
# @param {TreeNode} t
# @return {Boolean}

def pre_travel(root, arr)
  return if !root

  arr << root.val
  pre_travel(root.left, arr)
  pre_travel(root.right, arr)
end

def pre_travel_judge(root, sub_tree)
  return [false, []] if !root

  arr = []
  arr << root.val

  tmp = pre_travel_judge(root.left, sub_tree)
  return [true, []] if tmp.first
  arr.concat tmp.last

  tmp = pre_travel_judge(root.right, sub_tree)
  return [true, []] if tmp.first
  arr.concat tmp.last

  if arr==sub_tree
    return [true, []]
  else
    return [false, arr]
  end
end

def mid_travel(root, arr)
  return if !root

  mid_travel(root.left, arr)
  arr << root.val
  mid_travel(root.right, arr)
end

def mid_travel_judge(root, sub_tree)
  return [false, []] if !root

  arr = []

  tmp = mid_travel_judge(root.left, sub_tree)
  return [true, []] if tmp.first
  arr.concat tmp.last

  arr << root.val

  tmp = mid_travel_judge(root.right, sub_tree)
  return [true, []] if tmp.first
  arr.concat tmp.last

  if arr==sub_tree
    return [true, []]
  else
    return [false, arr]
  end
end

def is_subtree(s, t)
  t_pre = []
  pre_travel(t, t_pre)
  tmp = pre_travel_judge(s, t_pre)
  return false if !tmp.first

  t_mid = []
  mid_travel(t, t_mid)
  tmp = mid_travel_judge(s, t_mid)
  return false if !tmp.first

  true
end
