def judgeLine(board, l)
  set = Set.new
  board[l].map { |ch|
    if ch!='.'
      return false if set.include?(ch)
      set.add(ch)
    end
  } 
  return true
end

def judgeRow(board, r)
  set = Set.new
  (0..8).map { |l|
    ch = board[l][r]
    if ch!='.'
      return false if set.include?(ch)
      set.add(ch)
    end
  }
  return true
end

def judgeRect(board, l, r)
  set = Set.new
  (0..2).map { |i|
    (0..2).map { |j|
      ch = board[l+i][r+j]
      if ch!='.'
        return false if set.include?(ch)
        set.add(ch)
      end
    }
  }
  return true

end

def is_valid_sudoku(board)
  (0..8).map { |i|
    return false if !judgeLine(board, i) || !judgeRow(board, i)
  }

  [0,3,6].map { |i|
    [0,3,6].map { |j|
      return false if !judgeRect(board, i, j)
    }
  }

  return true

end
