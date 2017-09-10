# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left, @right = nil, nil
  end
end

# @param {TreeNode} root
# @return {Integer}
def find_tilt(root)
  result = 0
  result, sum = post_order_tranverse(root, result)
  return result
end

def post_order_tranverse(root, result)
  if root == nil
    return 0, 0
  end
  left_tilt, left_sum = post_order_tranverse(root.left, result)
  right_tilt, right_sum = post_order_tranverse(root.right, result)
  return result + left_tilt + right_tilt + (left_sum - right_sum).abs, root.val + left_sum + right_sum
end

def main
  root = TreeNode.new(1)
  p = TreeNode.new(2)
  root.left = p
  p = TreeNode.new(3)
  root.right = p
  puts find_tilt(root)
end

if __FILE__ == $0
    main()
end
