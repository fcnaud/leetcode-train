def is_power_of_two(n)
  return false if n<1
  while n>2
    return false if n%2!=0
    n/=2
  end
  return true
end
