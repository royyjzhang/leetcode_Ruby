# @param {Integer[]} nums
# @return {String[]}
def find_relative_ranks(nums)
  result = Array.new(nums.length, '')
  pair = {}
  nums.each_index do |i|
    pair[nums[i]] = i
  end
  pair_s = Hash[ pair.sort_by { |key, val| key }]
  rank = pair_s.values.reverse
  rank.each_index do |i|
    if i == 0
      result[rank[i]] = 'Gold Medal'
    elsif i == 1
      result[rank[i]] = 'Silver Medal'
    elsif i == 2
      result[rank[i]] = 'Bronze Medal'
    else
      result[rank[i]] = (i + 1).to_s
    end
  end
  return result
end

nums = [10,3,8,9,4]
puts "final #{find_relative_ranks(nums)}"
