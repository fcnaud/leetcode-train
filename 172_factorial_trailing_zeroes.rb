def trailing_zeroes(n)
  ret = 0
  div = 5
  while div <= n
    ret += n/div
    div *= 5
  end
  ret
end