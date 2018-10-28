# Given two binary trees, write a function to check if they are the same or not.

# Two binary trees are considered the same if they are structurally identical and the nodes have the same value.

# https://leetcode.com/problems/same-tree/



# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end
# @param {TreeNode} p
# @param {TreeNode} q
# @return {Boolean}

# Runtime: 44 ms, faster than 100.00% of Ruby online submissions for Same Tree.

# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} p
# @param {TreeNode} q
# @return {Boolean}

# Runtime: 44 ms, faster than 100.00% of Ruby online submissions for Same Tree.

def is_same_tree(p, q)
    if p.nil? && q.nil?
        true
    elsif p.nil? || q.nil? || p.val != q.val
        false
    else
        is_same_tree(p.left, q.left) && is_same_tree(p.right, q.right)
    end
end


