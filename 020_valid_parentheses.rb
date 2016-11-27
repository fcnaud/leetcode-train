#!/usr/bin/ruby
#
# @param {String} s
# @return {Boolean}
#

def isLeft(l)
  if l=='(' || l=='[' || l=='{'
    return true
  end
  return false
end

def isPair(l, r)
  if  l=='('&&r==')' ||
      l=='['&&r==']' ||
      l=='{'&&r=='}' 
    return true
  end
  return false
end

def is_valid(s)
  st = Array.new
  
  ind = 0
  while ind<s.length
    if isLeft(s[ind])
      st.push(s[ind])
    elsif !isPair(st.pop, s[ind])
      return false
    end

    ind+=1
  end

  return st.empty?

end

p is_valid("((]))")
