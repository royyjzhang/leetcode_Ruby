# @param {Integer} x
# @param {Integer} y
# @return {Integer}
def hamming_distance(x, y)
  diff = x ^ y
  count = 0
  32.times do
    count += diff & 1
    diff = diff >> 1
  end
  return count
end

x = 1
y = 4
puts hamming_distance(x, y)
