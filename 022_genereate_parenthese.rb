# @param {Integer} n
# @return {String[]}

def generate_parenthesis(n1)

  ans = Array.new

  dfs = ->(cur, cur_ans, remain_left, remain_right, un_match_left) do
    ans << String.new(cur_ans) if cur > (n*2)

    # 尝试放置 (
    if remain_left>0 then
      dfs.call(cur+1, cur_ans+'(', remain_left-1, remain_right, un_match_left+1)
    end

    # 尝试放置 )
    if remain_right>0 && un_match_left>0 then
      dfs.call(cur+1, cur_ans+')', remain_left, remain_right-1, un_match_left-1)
    end
  end

  dfs.call(1, '', n, n, 0)
  ans
end

p generate_parenthesis(3)