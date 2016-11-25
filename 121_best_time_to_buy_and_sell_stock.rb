#!/usr/bin/ruby
# @param {Integer[]} prices
# @param {Integer} 
#

def max_profit(prices)
  minx = prices[0]
  ans  = 0

  prices.map do |cur|
    ans  = [ans, (cur-minx)].max
    minx = [minx, cur].min
  end

  return ans
end


input = [7, 1, 5, 3, 6, 4]
p max_profit(input)
