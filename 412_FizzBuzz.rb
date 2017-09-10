# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
  result = []
  current = 1
  while current <= n do
    if current % 3 == 0 && current % 5 == 0
      result.push('FizzBuzz')
    elsif current % 3 == 0
      result.push('Fizz')
    elsif current % 5 ==0
      result.push('Buzz')
    else
      result.push(current.to_s)
    end
    current += 1
  end
  return result
end

n = 15
puts fizz_buzz(n)
