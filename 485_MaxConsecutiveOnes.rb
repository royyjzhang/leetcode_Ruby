# @param {Integer[]} nums
# @return {Integer}
def find_max_consecutive_ones(nums)
  if nums.length == 0
    return 0
  end
  ones_until_now = Array.new(nums.length, 0)
  if nums[0] == 1
    ones_until_now[0] = 1
  end
  n = nums.length
  now = 1
  max = ones_until_now[0]
  while now < n do
    if nums[now] == 1
      ones_until_now[now] = ones_until_now[now - 1] + 1
    end
    if ones_until_now[now] > max
      max = ones_until_now[now]
    end
    now += 1
  end
  return max
end

nums = [1, 1, 0, 1, 1, 1]
puts find_max_consecutive_ones(nums)
