# @param {Integer} m
# @param {Integer} n
# @param {Integer[][]} ops
# @return {Integer}
def max_count(m, n, ops)
  nowm = m
  nown = n
  ops.each do |square|
    if square[0] < nowm
      nowm = square[0]
    end
    if square[1] < nown
      nown = square[1]
    end
  end
  return nowm * nown
end

def main
  m = 3
  n = 3
  ops = [[2, 2], [3, 3]]
  puts max_count(m, n, ops)
end

if __FILE__ == $0
    main()
end
