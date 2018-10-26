# Given a sorted array nums, remove the duplicates in-place such that each element appear only once and return the new length.

# Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.

# @param {Integer[]} nums
# @return {Integer}
# Runtime: 60 ms, faster than 82.53% of Ruby online submissions for Remove Duplicates from Sorted Array.

def remove_duplicates(nums)
    nums.empty? ? target_index = 0 : target_index = 1
    current_value = nums[0]
    (1...nums.size).each do |i|
        if nums[i] != current_value
            current_value = nums[i]
            nums[target_index] = nums[i]
            target_index += 1
        end
    end
    target_index
end
