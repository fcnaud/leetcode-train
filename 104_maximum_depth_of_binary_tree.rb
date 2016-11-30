#!/usr/bin/ruby
# 

def max_depth(root)
  return 0 if !root
  1 + [max_depth(root.left), max_depth(root.right)].max
end
