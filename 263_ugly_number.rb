def is_ugly(num)
  return false if num==0
  num/=5 while num%5==0
  num/=3 while num%3==0
  num/=2 while num%2==0
  num==1
end
