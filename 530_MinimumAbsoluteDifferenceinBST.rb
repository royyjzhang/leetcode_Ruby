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
class Tree
  attr_accessor :prev, :min
  def initialize
    @min = -1
    @prev = nil
  end
  def in_order_tranverse(root)
    if root == nil
      return @min
    end
    puts root.val
    puts @min
    in_order_tranverse(root.left)
    if !@prev.nil?
      if @min == -1 || root.val - prev < @min
        @min = root.val - @prev
      end
    end
    @prev = root.val
    in_order_tranverse(root.right)
  end
end

def get_minimum_difference(root)
  solution = Tree.new
  solution.in_order_tranverse(root)
  return solution.min
end

root = TreeNode.new(1)
q = TreeNode.new(3)
root.right = q
q = TreeNode.new(2)
root.right.left = q
puts "final #{get_minimum_difference(root)}"
