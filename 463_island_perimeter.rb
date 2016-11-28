#!/usr/bin/ruby
#
# @param {Integer[][]} grid
# @return {Integer}
#

def island_perimeter(grid)

  height = grid.length
  return 0 if height==0
  width  = grid[0].length

  judge = ->(x, y) { x>=0&&x<height&&y>=0&&y<width }

  ret = 0
  (0...height).map { |i|
    (0...width).map { |j|
      if grid[i][j]==1
        ret+=4
        ret-=(grid[i+1][j]) if judge.call(i+1, j)
        ret-=(grid[i][j+1]) if judge.call(i, j+1)
        ret-=(grid[i-1][j]) if judge.call(i-1, j)
        ret-=(grid[i][j-1]) if judge.call(i, j-1)
      end
    }
  }
  return ret

end
