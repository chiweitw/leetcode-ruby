# Write a function to find the longest common prefix string amongst an array of strings.

# If there is no common prefix, return an empty string "".

# Example 1:

# Input: ["flower","flow","flight"]
# Output: "fl"
# Example 2:

# Input: ["dog","racecar","car"]
# Output: ""
# Explanation: There is no common prefix among the input strings.

def longest_common_prefix(strs)
  if strs.empty? || strs[0] == ""
    ""
  elsif strs.size == 1
    strs[0][0]
  else
    stop = -1
    (0...strs[0].size).each do |index|
      if strs.map { |item| item[index] }.uniq.size == 1
        stop = index
      else
        break
      end
    end
    stop == -1 ? "" : strs[0][0..stop]
  end
end

# longest_common_prefix(["flower","flow","flight"]) # "fl"
# longest_common_prefix(["dog","racecar","car"]) # ""
# longest_common_prefix([]) # ""
# longest_common_prefix(["a"]) # "a"
# longest_common_prefix([""]) # ""
# longest_common_prefix(["c","c"]) # "c"
