# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[][]}

require "thread"

def level_order_bottom(root)
    ret = Array.new
    curret = Array.new
    curlev = 0

    lev = Queue.new
    cur = Queue.new
    
    if root
        lev.push(0)
        cur.push(root)
    end
    
    while !cur.empty?
        
        curnode = cur.pop
        tmplev  = lev.pop
    
    
        if tmplev!=curlev
            ret.push(curret)
            curret = Array.new
            curlev = tmplev
        end
        curret.push(curnode.val)
        
        if curnode.left
            cur.push(curnode.left)
            lev.push(tmplev+1)
        end
        if curnode.right
            cur.push(curnode.right)
            lev.push(tmplev+1)
        end
        
    end
    
    ret.push(curret) if curret.length!=0
    
    return ret.reverse
end

