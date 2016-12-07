
def preOrder(root, order)
  if root then order<<root.val else order<<nil end

  if root
    preOrder(root.left, order)
    preOrder(root.right, order)
  end
end

def postOrder(root, order)
  if root then order<<root.val else order<<nil end

  if root
    postOrder(root.right, order)
    postOrder(root.left, order)
  end
end

def is_symmetric(root)
  return true if !root
  leftOrder = Array.new
  rightOrder = Array.new
  preOrder(root.left, leftOrder)
  postOrder(root.right, rightOrder)
  leftOrder==rightOrder
end
