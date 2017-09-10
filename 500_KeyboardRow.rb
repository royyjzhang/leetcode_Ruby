# @param {String[]} words
# @return {String[]}
def find_words(words)
  keyboard_lines = {q: 1, w: 1, e: 1, r: 1, t: 1, y: 1, u: 1, i: 1, o: 1, p: 1,
                    a: 2, s: 2, d: 2, f: 2, g: 2, h: 2, j: 2, k: 2, l: 2,
                    z: 3, x: 3, c: 3, v: 3, b: 3, n: 3, m: 3}
  result = []
  words.each do |word|
    current_line = keyboard_lines[word[0].downcase.to_sym]
    in_line_flag = true
    word.length.times do |i|
      if current_line != keyboard_lines[word[i].downcase.to_sym]
        in_line_flag = false
        break
      end
    end
    if in_line_flag
      result.push(word)
    end
  end
  return result
end

def find_words_withcase(words)
  keyboard_lines = {q: 1, w: 1, e: 1, r: 1, t: 1, y: 1, u: 1, i: 1, o: 1, p: 1,
                    a: 2, s: 2, d: 2, f: 2, g: 2, h: 2, j: 2, k: 2, l: 2,
                    z: 3, x: 3, c: 3, v: 3, b: 3, n: 3, m: 3}
  result = []
  words.each do |word|
    uppercase_flag = !((/[[:upper:]]/.match(word)).nil?)
    current_line = keyboard_lines[word[0].downcase.to_sym]
    in_line_flag = true
    word.length.times do |i|
      if current_line != keyboard_lines[word[i].downcase.to_sym]
        in_line_flag = false
        break
      end
    end
    if in_line_flag
      if uppercase_flag && (current_line == 2 || current_line == 3)
        result.push(word)
      elsif !uppercase_flag
        result.push(word)
      end
    end
  end
  return result
end

words = ["Hello", "Alaska", "Dad", "Peace", "abc"]
puts find_words(words)
