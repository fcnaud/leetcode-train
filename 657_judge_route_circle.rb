# @param {String} moves
# @return {Boolean}

def judge_circle(moves)
  x, y = 0, 0
  moves.each_char do |step|
    case step
      when 'U' then y += 1
      when 'D' then y -= 1
      when 'L' then x -= 1
      when 'R' then x += 1
    end
  end
  return true if x==0 && y == 0
  false
end