# Given an array of integers, return indices of the two numbers such that they add up to a specific target.
# You may assume that each input would have exactly one solution, and you may not use the same element twice.
# Example:
# Given nums = [2, 7, 11, 15], target = 9,
# Because nums[0] + nums[1] = 2 + 7 = 9,
# return [0, 1].
# Runtime: 240 ms, faster than 34.62% of Ruby online submissions for Two Sum.
def two_sum(nums, target)
    nums.each_with_index do |value, index|
        while nums[index+1..-1].index(target - value)
            return [index, index + 1 + nums[index + 1..-1].index(target - value)]
        end
    end
end
