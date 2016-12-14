def climb_stairs(n)
  fib = Array.new
  fib<<1<<1
  cur=1
  while cur<n
    fib<<(fib[-1]+fib[-2])
    cur+=1
  end
  fib.last
end
