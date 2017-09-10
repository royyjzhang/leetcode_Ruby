# @param {String} s
# @param {String} p
# @return {Integer[]}
def find_anagrams(s, p)
  result = []
  hash_p = {}
  hash_s = {}
  i = 0
  if (s.length < p.length)
    return result
  end
  while (i < p.length) do
    if hash_p.has_key?(p[i])
      hash_p[p[i]] = hash_p[p[i]] + 1
    else
      hash_p[p[i]] = 1
    end
    if hash_s.has_key?(s[i])
      hash_s[s[i]] = hash_s[s[i]] + 1
    else
      hash_s[s[i]] = 1
    end
    i = i + 1
  end
  if hash_s.eql?(hash_p)
    result << 0
  end
  while i < s.length do
    if hash_s.has_key?(s[i])
      hash_s[s[i]] = hash_s[s[i]] + 1
    else
      hash_s[s[i]] = 1
    end
    hash_s[s[i - p.length]] = hash_s[s[i - p.length]] - 1
    if (hash_s[s[i - p.length]] == 0)
      hash_s.delete(s[i - p.length])
    end
    if hash_s.eql?(hash_p)
      result << i - p.length + 1
    end
    i = i + 1
  end
  return result
end

def main()
  s = "abab"
  p = "ab"
  puts "#{find_anagrams(s, p)}"
end

if __FILE__ == $0
    main()
end
