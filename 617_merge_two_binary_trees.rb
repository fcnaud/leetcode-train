# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} t1
# @param {TreeNode} t2
# @return {TreeNode}

def merge_trees(t1, t2)
  if t1==nil && t2==nil then
    return nil
  elsif t2==nil
    root = TreeNode.new(t1.val)
    root.left = merge_trees(t1.left, nil)
    root.right = merge_trees(t1.right, nil)
  elsif t1==nil
    root = TreeNode.new(t2.val)
    root.left = merge_trees(nil, t2.left)
    root.right = merge_trees(nil, t2.right)
  else
    root = TreeNode.new(t1.val+t2.val)
    root.left = merge_trees(t1.left, t2.left)
    root.right=  merge_trees(t1.right, t2.right)
  end
  root
end