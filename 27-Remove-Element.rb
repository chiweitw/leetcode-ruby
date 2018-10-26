# Given an array nums and a value val, remove all instances of that value in-place and return the new length.

# Do not allocate extra space for another array, you must do this by modifying the input array in-place with O(1) extra memory.

# The order of elements can be changed. It doesn't matter what you leave beyond the new length.

# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
# Runtime: 48 ms, faster than 22.45% of Ruby online submissions for Remove Element.
def remove_element(nums, val)
    current_index = 0
    (0...nums.size).each do |i|
        if nums[i] != val
            nums[current_index] = nums[i]
            current_index += 1
        end
    end
    current_index
end
