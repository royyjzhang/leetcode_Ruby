# @param {Integer} area
# @return {Integer[]}
def construct_rectangle(area)
  result = []
  if area == 0
    return result
  end
  w = Math.sqrt(area).to_i
  while w > 1 do
    if area % w == 0
      result.push(area / w)
      result.push(w)
      return result
    end
    w -= 1
  end
  return [area, 1]
end

puts construct_rectangle(3)
puts construct_rectangle(4)
puts construct_rectangle(12)
