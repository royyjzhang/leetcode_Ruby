# @param {Integer[]} g
# @param {Integer[]} s
# @return {Integer}
def find_content_children(g, s)
  g = g.sort
  s = s.sort
  result = 0
  j = 0
  while j < s.length && result < g.length do
    if (s[j] >= g[result])
      result += 1
    end
    j += 1
  end
  return result
end

g = [1, 2, 3]
s = [1, 1]
puts find_content_children(g, s)
