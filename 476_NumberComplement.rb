# @param {Integer} num
# @return {Integer}
def find_complement(num)
  if num == 0
    return 1
  end
  mask = ~0
  while (mask & num != 0) do
    mask = mask << 1
  end
  result = ~mask & ~ num
  return result
end

num = 1
puts find_complement(num)
