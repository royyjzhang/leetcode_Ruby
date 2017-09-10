# @param {Integer[]} nums
# @return {Integer}
def total_hamming_distance(nums)
  total_distance = 0
  32.times do |shift_len|
    set_bit = 0
    nums.each do |num|
      set_bit += (num >> shift_len) & 1
    end
    total_distance += set_bit * (nums.length - set_bit)
  end
  return total_distance
end

nums = [4, 14, 2]
puts total_hamming_distance(nums)
