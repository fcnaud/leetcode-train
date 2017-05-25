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

class TreeNode
  attr_accessor :depth
end

def min_depth(root)
  return 0 if !root

  qu = Queue.new

  root.depth = 1
  qu.push root
  while !qu.empty?
    node = qu.pop
    return node.depth if (!node.left) && (!node.right)

    if node.left
      node.left.depth = node.depth + 1
      qu.push node.left
    end
    if node.right
      node.right.depth = node.depth + 1
      qu.push node.right
    end
  end

end