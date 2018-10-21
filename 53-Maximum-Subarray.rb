# https://leetcode.com/problems/maximum-subarray/submissions/

# Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.
# Example:
# Input: [-2,1,-3,4,-1,2,1,-5,4],
# Output: 6
# Explanation: [4,-1,2,1] has the largest sum = 6.
# Follow up:
# If you have figured out the O(n) solution, try coding another solution using the divide and conquer approach, which is more subtle.

def max_sub_array(nums)
    max_end = 0
    max_current = nums.max
    nums.each do |item|
        max_end += item
        if max_end < 0
            max_end = 0
        elsif max_end > max_current
            max_current = max_end
        end
    end
    max_current
end
