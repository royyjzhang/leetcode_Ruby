# @param {Integer[]} find_nums
# @param {Integer[]} nums
# @return {Integer[]}
def next_greater_element(find_nums, nums)
  first_greater = {}
  stack = []
  nums.each  do |num|
    while (!stack.empty?) && (stack[-1] < num) do
      first_greater[stack.pop] = num
    end
    stack.push(num)
  end
  result = []
  find_nums.each do |find|
    if first_greater.has_key?(find)
      result.push(first_greater[find])
    else
      result.push(-1)
    end
  end
  return result
end

find_nums = [4, 1, 2]
nums = [1, 3, 4, 2]
puts next_greater_element(find_nums, nums)
