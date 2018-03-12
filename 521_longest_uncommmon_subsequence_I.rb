# ing...
# @param {String} a
# @param {String} b
# @return {Integer}

=begin
def find_lu_slength(a, b)
  dp = Array.new
  (a.size+1) .times do
    dp << Array.new(b.size+1, 0)
  end

  (1..a.size).each do |i|
    (1..b.size).each do |j|
      if a[i-1] == b[j-1]
        dp[i][j] = [dp[i-1][j], dp[i][j-1], dp[i-1][j-1]+1].max
      else
        dp[i][j] = [dp[i-1][j], dp[i][j-1], dp[i-1][j-1]].max
      end
    end
  end
  if dp[a.size][b.size]>=[a.size, b.size].min
    -1
  else
    [a.size, b.size].min
  end
end
=end

def find_lu_slength(a, b)
  if a==b
    -1
  else
    [a.size, b.size].max
  end
end

p find_lu_slength("aaa", "aaa");