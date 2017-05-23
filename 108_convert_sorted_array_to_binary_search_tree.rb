
class TreeNode
  attr_accessor :val, :left, :right

  def initialize(val)
    @val = val
    @left = @right = nil
  end
end

def build_tree(nums, l, r)
  return TreeNode.new(nums[l]) if r==l
  return nil if r<l

  mid = (l+r)/2
  root = build_tree(nums, mid, mid)
  root.left = build_tree(nums, l, mid-1)
  root.right = build_tree(nums, mid+1, r)

  root
end

def sorted_array_to_bst(nums)
  return nil if nums.size==0

  build_tree(nums, 0, nums.size-1)
end

sorted_array_to_bst([1,2,3,4])