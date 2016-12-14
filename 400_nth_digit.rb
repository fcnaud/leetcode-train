def find_nth_digit(n)
  curDigit = 1
  curNum = 0
  sumDig = 0
  while true
    curDigitNumCnt = 9 * (10**(curDigit-1))
    if (n-sumDig)<=curDigitNumCnt*curDigit
      leftDig = n - sumDig
      ret   = curNum + (leftDig/curDigit)
      leave = leftDig % curDigit
      if leave==0
        return ret.to_s[-1].to_i
      else
        return (ret+1).to_s[leave-1].to_i
      end
    elsif
      sumDig   += curDigitNumCnt*curDigit
      curDigit += 1
      curNum   += curDigitNumCnt
    end
  end
end

p find_nth_digit(10)
p find_nth_digit(1000)
p find_nth_digit(232324)

