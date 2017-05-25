def repeated_substring_pattern(s)
  (1..s.size/2).each do |len|
    next if s.size%len!=0

    flag = true
    (0...len).each do |i|

      i.step(s.size-1, len).each do |j|
        if s[i]!=s[j]
          flag = false
          break
        end
      end
      break if !flag

    end

    return true if flag
  end

  false
end


p repeated_substring_pattern('sssss')
p repeated_substring_pattern('abababa')
p repeated_substring_pattern('ababab')