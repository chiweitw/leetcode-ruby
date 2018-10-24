# You are climbing a stair case. It takes n steps to reach to the top.

# Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

# Note: Given n will be a positive integer.

# Example 1:

# Input: 2
# Output: 2
# Explanation: There are two ways to climb to the top.
# 1. 1 step + 1 step
# 2. 2 steps
# Example 2:

# Input: 3
# Output: 3
# Explanation: There are three ways to climb to the top.
# 1. 1 step + 1 step + 1 step
# 2. 1 step + 2 steps
# 3. 2 steps + 1 step

# Time Limit Exceeded
# def climb_stairs(n)
#     a = Array.new(n, 1)
#     ways = 1
#     (0...n).each do |i|
#         if a[i].nil? || a[i+1].nil?
#             break
#         end
#         a[i] = 2
#         a.pop
#         p a.permutation.to_a.uniq.size
#         ways += a.permutation.to_a.uniq.size
#     end
#     ways
# end

# Time Limit Exceeded
# def climb_stairs(n)
#     ways = 0
#     i = 0
#     while i <= n / 2
#         ways += [*1..(n-i)].combination(i).to_a.size
#         i += 1
#     end
#     ways
# end

# Runtime: 44 ms, faster than 89.55% of Ruby online submissions for Climbing Stairs.
class Integer
  def fact
    (1..self).reduce(:*) || 1
  end
end

def climb_stairs(n)
    ways = 0
    i = 0
    while i <= n / 2
        ways += (n-i).fact / i.fact / (n - 2 * i).fact
        i += 1
    end
    ways
end
