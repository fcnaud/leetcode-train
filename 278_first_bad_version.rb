def first_bad_version(n)
  l, r = 1, n
  while l<r
    mid = (l+r) / 2
    if is_bad_version(mid)
      r = mid
    elsif
      l = mid + 1
    end
  end
  l
end