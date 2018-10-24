# Given two binary strings, return their sum (also a binary string).

# The input strings are both non-empty and contains only characters 1 or 0.

# Example 1:

# Input: a = "11", b = "1"
# Output: "100"
# Example 2:

# Input: a = "1010", b = "1011"
# Output: "10101"

# Runtime: 56 ms, faster than 26.32% of Ruby online submissions for Add Binary.
def add_binary(a, b)
    sum = (a.to_i + b.to_i).to_s.split("").reverse.map { |i| i.to_i }
    (0...sum.size).each do |i|
        if sum[i] == 2
            sum[i] = 0
            sum[i+1] ? sum[i+1] += 1 : sum += [1]
        elsif sum[i] == 3
            sum[i] = 1
            sum[i+1] ? sum[i+1] += 1 : sum += [1]
        end
    end
    sum.reverse.join("")
end
