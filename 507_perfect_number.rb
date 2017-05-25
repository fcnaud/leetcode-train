def check_perfect_number(num)
  return false if num<=1

  sum = 0
  (1..Math.sqrt(num).floor).each do |n|
    if num%n==0
      sum += n
      sum += (num/n) if n!=(num/n)
    end
  end
  sum==num*2
end

p check_perfect_number(28)