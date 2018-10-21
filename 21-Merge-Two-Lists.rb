# Merge two sorted linked lists and return it as a new list. The new list should be made by splicing together the nodes of the first two lists.

# Example:

# Input: 1->2->4, 1->3->4
# Output: 1->1->2->3->4->4

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}

def turn_to_array(l)
    output = []
    until l.nil?
        output << l.val
        l = l.next
    end
    output
end

def merge_two_lists(l1, l2)
    (turn_to_array(l1) + turn_to_array(l2)).sort
end
