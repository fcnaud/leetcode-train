def say(str)
  return '11' if str=='1'

  ret = ''
  pre = ''
  cnt = 0
  (0...str.size).each do |ind|
    if ind==str.size-1
      if str[ind]==pre
        cnt += 1
        ret += (cnt.to_s+pre)
      else
        ret += (cnt.to_s+pre)
        ret += ('1'+str[ind])
      end
    elsif ind==0
      cnt=1; pre=str[ind]
    else
      if str[ind]==pre
        cnt+=1
      else
        ret += (cnt.to_s+pre)
        cnt=1; pre=str[ind]
      end
    end
  end
  ret
end

def count_and_say(n)
  ret = '1'
  (n-1).times do
    ret = say ret
  end
  ret
end

(1..10).each do |i|
  p count_and_say(i)
end