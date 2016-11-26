#!/usr/bin/ruby

def travel(root, arr)
    if root
        arr.push(root.val)
        travel(root.left, arr)
        travel(root.right, arr)
    end
end

def preorder_traversal(root)
    ret = Array.new
    travel(root, ret)
    return ret
