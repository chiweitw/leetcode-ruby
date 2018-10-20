# Given an array of integers, return indices of the two numbers such that they add up to a specific target.
# You may assume that each input would have exactly one solution, and you may not use the same element twice.
# Example:
# Given nums = [2, 7, 11, 15], target = 9,
# Because nums[0] + nums[1] = 2 + 7 = 9,
# return [0, 1].

def two_sum(nums, target)
    answer = []
    nums.each_with_index do |value, index1|
        (index1+1...nums.size).each do |index2|
            if nums[index2] == target - value
                answer = [index1, index2]
            end
        end
    end
    answer
end
