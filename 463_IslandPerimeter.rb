# @param {Integer[][]} grid
# @return {Integer}
def get_perimeter(grid, m, n, startm, startn)
  queue = []
  queue.push([startm, startn])
  result = 0
  check = Array.new(m){Array.new(n, false)}
  check[startm][startn] = true
  while !(queue.empty?) do
    now = queue.shift
    # Up
    if now[0] > 0 && grid[now[0] - 1][now[1]] == 1 && !check[now[0] - 1][now[1]]
      queue.push([now[0] - 1, now[1]])
      check[now[0] - 1][now[1]] = true
    elsif now[0]== 0 || !check[now[0] - 1][now[1]]
      result += 1
    end
    # Down
    if now[0] < m - 1 && grid[now[0] + 1][now[1]] == 1 && !check[now[0] + 1][now[1]]
      queue.push([now[0] + 1, now[1]])
      check[now[0] + 1][now[1]] = true
    elsif now[0] == m - 1 || !check[now[0] + 1][now[1]]
      result += 1
    end
    # Left
    if now[1] > 0 && grid[now[0]][now[1] - 1] == 1 && !check[now[0]][now[1] - 1]
      queue.push([now[0], now[1] - 1])
      check[now[0]][now[1] - 1] = true
    elsif now[1] == 0 || !check[now[0]][now[1] - 1]
      result += 1
    end
    # Right
    if now[1] < n - 1 && grid[now[0]][now[1] + 1] == 1 && !check[now[0]][now[1] + 1]
      queue.push([now[0], now[1] + 1])
      check[now[0]][now[1] + 1] = true
    elsif now[1] == n - 1 || !check[now[0]][now[1] + 1]
      result += 1
    end
  end
  return result
end

def island_perimeter(grid)
  if grid.length == 0
    return 0
  end
  m = grid.length
  if grid[0].length == 0
    return 0
  end
  n = grid[0].length
  startm = -1
  startn = -1
  m.times do |i|
    n.times do |j|
      if grid[i][j] == 1
        startm = i
        startn = j
        break
      end
    end
  end
  result = get_perimeter(grid, m, n, startm, startn)
  return result
end

grid = [[0,1,0,0],
        [1,1,1,0],
        [0,1,0,0],
        [1,1,0,0]]
grid1 = [[1,1],[1,1]]
puts island_perimeter(grid1)
