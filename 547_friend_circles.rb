# @param {Integer[][]} m
# @return {Integer}

def find_circle(m, from, visit)
  return if visit[from]
  visit[from] = true

  (0...m[from].size).each do |to|
    find_circle(m, to, visit) if m[from][to] == 1
  end
end

def find_circle_num(m)
  visit = Hash.new
  circle = 0
  (0...m.size).each do |from|
    unless visit[from] then
      find_circle(m, from, visit)
      circle += 1
    end
  end
  circle
end