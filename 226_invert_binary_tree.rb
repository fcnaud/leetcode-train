#!/usr/bin/ruby
#

def invert_tree(root)
    if !root
       return root
    end

    invert_tree(root.left)
    invert_tree(root.right)
    root.left, root.right = root.right, root.left

    return root
end
