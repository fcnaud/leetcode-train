# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

# @param {TreeNode} root
# @param {TreeNode} p
# @param {TreeNode} q
# @return {TreeNode}

class UnionFind
  @par
  def initialize
    @par = Hash.new
  end
  def set_par(cur, par)
    @par[cur] = par
  end
  def get_par(cur)
    if @par[cur]==nil
      return cur
    else
      return (@par[cur] = get_par(@par[cur]))
    end
  end
end

def lca(root, p, q, union, vis)
  vis[root] = true

  if root.left && !vis[root.left]
    ret = lca(root.left, p, q, union, vis)
    return ret if ret.first
    union.set_par(root.left, root)
  end
  if root.right && !vis[root.right]
    ret = lca(root.right, p,q, union, vis)
    return ret if ret.first
    union.set_par(root.right, root)
  end

  if root==p && vis[q]
    return [true, union.get_par(q)]
  end
  if root==q && vis[p]
    return [true, union.get_par(p)]
  end

  return [false, nil]
end

def lowest_common_ancestor(root, p, q)
  union = UnionFind.new
  vis = Hash.new
  lca(root, p, q, union, vis).last.val
end

root = TreeNode.new(2)
node2 = TreeNode.new(1)
node3 = TreeNode.new(3)
root.left = node2
root.right = node3

p lowest_common_ancestor(root, node2, node3)

