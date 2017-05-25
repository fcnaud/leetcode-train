def binary_search(num, l, r)
  #p "#{l} #{r}"
  return false if r<l

  mid = (l+r)/2
  if mid*mid==num
    return true
  elsif mid*mid<num
    return binary_search(num, mid+1, r)
  else
    return binary_search(num, l, mid-1)
  end
end

def is_perfect_square(num)
  binary_search(num, 0, num)
end

p is_perfect_square(16)
p is_perfect_square(9)