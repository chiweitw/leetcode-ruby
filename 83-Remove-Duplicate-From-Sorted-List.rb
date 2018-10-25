# Given a sorted linked list, delete all duplicates such that each element appear only once.

# Example 1:

# Input: 1->1->2
# Output: 1->2
# Example 2:

# Input: 1->1->2->3->3
# Output: 1->2->3

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}

# Runtime: 52 ms, faster than 96.88% of Ruby online submissions for Remove Duplicates from Sorted List.

def delete_duplicates(head)
    a = []
    while head
        a << head.val
        head = head.next
    end
    a.uniq
end

