# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Boolean}

def judgeTree(root)
    if !root
        return 0, true
    end
    
    lefth, flag = judgeTree(root.left)
    if !flag
        return -1, false
    end
    
    righth, flag = judgeTree(root.right)
    if !flag
        return -1, false
    end
    
    if (lefth-righth).abs >1
        return -1, false
    else
        return [lefth, righth].max+1, true
    end
end

def is_balanced(root)
    _, ret = judgeTree(root) 
    return ret
end