class String
  def isLetter?
    (self>='A'&&self<='Z') || (self>='a'&&self<='z') || (self>='0'&&self<='9')
  end

  def toLower
    if self>='A'&&self<='Z'
      return (self.ord-'A'.ord+'a'.ord).chr
    end
    self
  end
end

def is_palindrome(str)
  st, ed = 0, str.length-1
  while st<ed
    st+=1 while st<ed && (not str[st].isLetter?)
    ed-=1 while st<ed && (not str[ed].isLetter?)
    return false if str[st].toLower!=str[ed].toLower
    st+=1
    ed-=1
  end
  return true
end

p is_palindrome("A man, a plan, a canal: Panama")
p is_palindrome("0p")