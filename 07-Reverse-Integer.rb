# Given a 32-bit signed integer, reverse digits of an integer.

# Example 1:

# Input: 123
# Output: 321
# Example 2:

# Input: -123
# Output: -321
# Example 3:

# Input: 120
# Output: 21
# Note:
# Assume we are dealing with an environment which could only store integers within the 32-bit signed integer range: [−231,  231 − 1]. For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.
# Runtime: 56 ms, faster than 68.92% of Ruby online submissions for Reverse Integer.
def reverse(x)
    reversed = x.to_s.reverse
    reversed = reversed[1..-1] while reversed[0] == "0"
    reversed = "-" + reversed[0...-1] while reversed[-1] == "-"
    (-2**31..2**31 - 1).include?(reversed.to_i) ? reversed.to_i : 0
end
