# @param {Character[][]} grid
# @return {Integer}

# @param {Character[][]} grid
# @return {Integer}

def dfs(x, y, grid, visit)
  judge = ->(x, y) do
    return false if x>=grid.size || x<0
    return false if y>=grid[0].size || y<0
    return false if visit[x][y] || grid[x][y]=='0'
    true
  end

  visit[x][y] = true
  [[1, 0], [0, 1], [-1, 0], [0, -1]].each do |step|
    next_x, next_y = x+step[0], y+step[1]
    dfs(next_x, next_y, grid, visit) if judge.call(next_x, next_y)
  end
end

# 还没有测试
def bfs(x, y, grid, visit)
  judge = ->(x, y) do
    return false if x>=grid.size || x<0
    return false if y>=grid[0].size || y<0
    return false if visit[x][y] || grid[x][y]=='0'
    true
  end

  qu = Queue.new
  qu.push [x, y]
  while !qu.empty?
    cur_x, cur_y = qu.pop
    next if visit[cur_x][cur_y]
    visit[cur_x][cur_y] = true
    [[1, 0], [0, 1], [-1, 0], [0, -1]].each do |step|
      next_x, next_y = cur_x+step[0], cur_y+step[1]
      qu.push [next_x, next_y] if judge.call(next_x, next_y)
    end
  end
end

def num_islands(grid)
  visit = Array.new
  grid.size.times do
    visit << Array.new(grid[0].size, false)
  end

  res = 0
  (0...grid.size).each do |x|
    (0...grid[0].size).each do |y|
      if (not visit[x][y]) && grid[x][y]=='1'
        res += 1
        bfs(x, y, grid, visit)
      end
    end
  end
  res
end