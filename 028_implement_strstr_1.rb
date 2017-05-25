# kmp

class KMP
  @next
  @str
  def initialize(str)
    @next = Array.new(str.size, 0)
    @str  = str
    preKMP
  end
  def preKMP
    i, j = 0, -1
    @next[0] = -1
    while i<@str.size-1
      if j==-1 || @str[i]==@str[j]
        i+=1; j+=1
        @next[i] = j
      else
        j = @next[j]
      end
    end
  end
  def kmp(haystack)
    i, j = 0, 0
    while i<haystack.size && j<@str.size
      if j==-1 || haystack[i]==@str[j]
        i+=1; j+=1
      else
        j = @next[j]
      end
    end
    return i-j if j==@str.size
    return -1
  end
end

def str_str(haystack, needle)
  kmp = KMP.new needle
  kmp.kmp haystack
end

# p str_str "abce", "ab"

p str_str "mississippi" ,"issip"