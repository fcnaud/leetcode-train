# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {String[]}


def dfs(root, path)

    if !root
        return
    end
    
    path.push(root.val)
    
    if !root.left && !root.right
        $ret.push(path.clone)
    end
    
    if root.left
        dfs(root.left, path)
        path.pop
    end
    
    if root.right
        dfs(root.right, path)
        path.pop
    end
    
end

def binary_tree_paths(root)
    $ret = Array.new

    dfs(root, Array.new)
    
    return $ret.map {|path| path.join("->")}
end