# brute-force

def str_str(haystack, needle)
  (0..haystack.size-needle.size).each do |start|
    flag = true
    (0...needle.size).each do |ind|
      if haystack[start+ind]!=needle[ind]
        flag = false
        break
      end
    end
    return start if flag
  end

  -1
end