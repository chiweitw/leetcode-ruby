# Given a string s consists of upper/lower-case alphabets and empty space characters ' ', return the length of last word in the string.

# If the last word does not exist, return 0.

# Note: A word is defined as a character sequence consists of non-space characters only.

# Example:

# Input: "Hello World"
# Output: 5
# Runtime: 44 ms, faster than 100.00% of Ruby online submissions for Length of Last Word.
def length_of_last_word(s)
    !s.split(" ").empty? ? s.split(" ")[-1].length : 0
end
