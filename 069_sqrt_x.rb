def binary_search(num, l, r)
  #{p} "#{l} #{r}"
  return l if r<=l

  mid = (l+r+1)/2
  if mid*mid==num
    return mid
  elsif mid*mid<num
    return binary_search(num, mid, r)
  else
    return binary_search(num, l, mid-1)
  end
end

def my_sqrt(num)
  binary_search(num, 0, num)
end

p my_sqrt(4)