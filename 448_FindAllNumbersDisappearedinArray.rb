# @param {Integer[]} nums
# @return {Integer[]}
def find_disappeared_numbers(nums)
  result = []
  if nums.length == 0
    return result
  end
  nums.each_index do |i|
    j = nums[i].abs - 1
    if nums[j] > 0
      nums[j] = -nums[j]
    else
      nums[j] = nums[j]
    end
  end
  nums.each_index do |i|
    if nums[i] > 0
      result.push(i + 1)
    end
  end
  return result
end

nums = [4, 3, 2, 7, 8, 2, 3, 1]
puts find_disappeared_numbers(nums)
