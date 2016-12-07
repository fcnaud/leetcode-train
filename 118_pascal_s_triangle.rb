def generate(num_rows)
  ret = [[1],[1,1]]
  cur = 2
  while cur<num_rows
    curLine = Array.new([1])
    preLine = ret[-1]
    (0...preLine.length-1).each {|ind|
      curLine<<(preLine[ind+1]+preLine[ind])
    }
    ret<<(curLine<<1)
    cur+=1
  end
  ret.take(num_rows)
end

p generate(1)
p generate(2)
p generate(5)
