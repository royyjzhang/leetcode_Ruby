# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  max_len = 0
  char_in_sub = {}
  left = right = 0
  while right < s.length do
    if char_in_sub.key?(s[right]) && char_in_sub[s[right]] >= left
      max_len = [max_len, right - left].max
      left = char_in_sub[s[right]] + 1
    end
    char_in_sub[s[right]] = right
    right += 1
  end
  max_len = [max_len, right - left].max
  return max_len
end

s1 = 'abcabcbb'
puts length_of_longest_substring(s1)
s2 = 'bbbb'
puts length_of_longest_substring(s2)
s3 = 'pwwkew'
puts length_of_longest_substring(s3)
