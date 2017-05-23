
def number_of_boomerangs(points)
  all_dist = Array.new(points.size) do
    Array.new(points.size, nil)
  end

  (0...points.size).each do |i|
    (i...points.size).each do |j|
      all_dist[i][j] = all_dist[j][i] = (points[i][0]-points[j][0])**2 + (points[i][1]-points[j][1])**2
      #超时，竟然是下面这种写法导致的，很伤心。
      #all_dist[i][j] = all_dist[j][i] = (0..1).map do |ind|
      #  (points[i][ind]-points[j][ind])**2
      #end.reduce(:+)
    end
  end

  (0...points.size).map do |i|
    cnt = Hash.new
    (0...points.size).each do |j|
      dist = all_dist[i][j]
      cnt[dist] ? cnt[dist]+=1 : cnt[dist]=1
    end

    cnt.values.map do |val|
      val*(val-1)
    end.reduce(:+)
  end.reduce(:+)

end

p number_of_boomerangs [[0,0],[1,0],[2,0]]
