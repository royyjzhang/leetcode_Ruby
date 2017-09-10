# @param {String} s
# @return {Boolean}
def check_record(s)
  result = true
  count_a = 0
  count_l = 0
  s.each_char do |status|
    if status=='A'
      count_a += 1
      count_l = 0
    elsif status=='L'
      count_l += 1
    else
      count_l = 0
    end
    if count_l > 2
      result = false
    end
  end
  if count_a > 1
    result = false
  end
  result
end

s1 = 'PPALLP'
puts check_record(s1)

s2 = 'PPALLL'
puts check_record(s2)

s3 = 'LALL'
puts check_record(s3)
