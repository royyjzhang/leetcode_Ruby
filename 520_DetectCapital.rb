# @param {String} word
# @return {Boolean}
def detect_capital_use(word)
  capitals = word.scan /\p{Upper}/
  if capitals.length == 0
    return true
  elsif capitals.length == 1 && capitals[0] == word[0]
    return true
  elsif capitals.length == word.length
    return true
  else
    return false
  end
end

word1 = "USA"
puts detect_capital_use(word1)
word2 = 'leetcode'
puts detect_capital_use(word2)
word3 = 'flaG'
puts detect_capital_use(word3)
word4 = 'Google'
puts detect_capital_use(word4)
