# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {Integer} sum
# @return {Integer}

def dfs(root, arr, aim)
  return 0 if !root

  cur_sum = arr.last + root.val
  ret = arr.count do |val|
    cur_sum-val==aim
  end

  arr.push cur_sum
  ret += dfs(root.left, arr, aim)
  ret += dfs(root.right,arr, aim)
  arr.pop

  ret
end

def path_sum(root, sum)
  arr = [0]
  dfs(root, arr, sum)
end