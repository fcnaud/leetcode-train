# @param {Integer[][]} grid
# @return {Integer}

# 递归爆栈了
def dfs(x, y, grid, visit)
  judge = ->(x, y) do
    return false if x>=grid.size || x<0
    return false if y>=grid[0].size || y<0
    return false if visit[x][y] || grid[x][y]==0
    true
  end

  visit[x][y] = true
  res = 1
  [[1, 0], [0, 1], [-1, 0], [0, -1]].each do |step|
    next_x, next_y = x + step[0], y + step[1]
    res += dfs(next_x, next_y, grid, visit) if judge.call(next_x, next_y)
  end
  res
end

def bfs(x, y, grid, visit)
  judge = ->(x, y) do
    return false if x>=grid.size || x<0
    return false if y>=grid[0].size || y<0
    return false if visit[x][y] || grid[x][y]==0
    true
  end

  qu = Queue.new
  qu.push([x, y])
  res = 0
  while !qu.empty?
    cur_x, cur_y = qu.pop
    next if visit[cur_x][cur_y]
    visit[cur_x][cur_y] = true
    res += 1
    [[1, 0], [0, 1], [-1, 0], [0, -1]].each do |step|
      next_x, next_y = cur_x + step[0], cur_y + step[1]
      qu.push([next_x, next_y]) if judge.call(next_x, next_y)
    end
  end
  res
end

def max_area_of_island(grid)
  height, width = grid.size, grid[0].size
  visit = Array.new
  height.times do
    visit << Array.new(width, false)
  end

  res = 0
  (0...height).each do |x|
    (0...width).each do |y|
      if (not visit[x][y]) && grid[x][y]==1
        res = [res, bfs(x, y, grid, visit)].max
      end
    end
  end
  res
end