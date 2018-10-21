# Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
# An input string is valid if:
# Open brackets must be closed by the same type of brackets.
# Open brackets must be closed in the correct order.
# Note that an empty string is also considered valid.

COUNTERPART = {
    '(' => ")",
    '{' => "}",
    '[' => "]"
    }

def is_valid(s)
    i = 0
    while i < s.size
        if !s[i+1].nil? && s[i+1] == COUNTERPART[s[i]]
            s.slice!(i..i+1)
            i -= 1
        else
            i += 1
        end
    end
    s.empty?
end

# is_valid("{[]}") # true
# is_valid("()[]{}") # true
# is_valid("(]") # false
# is_valid("([)]") # false
# is_valid("{[]}") # true
# is_valid("]") # false

