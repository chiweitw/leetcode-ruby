# Given a binary tree, check whether it is a mirror of itself (ie, symmetric around its center).

# For example, this binary tree [1,2,2,3,4,4,3] is symmetric:

#     1
#    / \
#   2   2
#  / \ / \
# 3  4 4  3
# But the following [1,2,2,null,3,null,3] is not:
#     1
#    / \
#   2   2
#    \   \
#    3    3
# Note:
# Bonus points if you could solve it both recursively and iteratively.

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

# Runtime: 48 ms, faster than 100.00% of Ruby online submissions for Symmetric Tree.

def is_mirror(l, r)
    if l.nil? && r.nil?
        true
    elsif l.nil? || r.nil?
        false
    else
        l.val == r.val && is_mirror(l.left, r.right) && is_mirror(l.right, r.left)
    end
end

def is_symmetric(root)
    is_mirror(root, root)
end
