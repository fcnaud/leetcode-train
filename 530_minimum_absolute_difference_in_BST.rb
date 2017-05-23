# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer}

$pre = nil
$ans = nil

def travel(root)
  return if !root
  travel(root.left)
  if $pre
    tmp_val = (root.val-$pre).abs
    $ans = $ans ? [$ans, tmp_val].min : tmp_val
  end
  $pre = root.val
  travel(root.right)
end

def get_minimum_difference(root)
  $pre = nil
  $ans = nil
  travel(root)
  $ans
end