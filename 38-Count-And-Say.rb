# The count-and-say sequence is the sequence of integers with the first five terms as following:

# 1.     1
# 2.     11
# 3.     21
# 4.     1211
# 5.     111221
# 1 is read off as "one 1" or 11.
# 11 is read off as "two 1s" or 21.
# 21 is read off as "one 2, then one 1" or 1211.

# Given an integer n where 1 ≤ n ≤ 30, generate the nth term of the count-and-say sequence.

# Note: Each term of the sequence of integers will be represented as a string.

def groups(str)
    array = str.split("")
    i = 0
    while i < str.size
        if !array[i+1].nil? && array[i][0] == array[i+1]
            array[i] += array[i+1]
            array.delete_at(i+1)
        else
            i += 1
        end
    end
    output = ""
    array.each do |item|
        output << item.size.to_s + item[0]
    end
    output
end
def count_and_say(n)
    # continual same numbers => qty" + "number"
    sequence = "1"
    (0...n-1).each do
        sequence = groups(sequence)
    end
    sequence
end
