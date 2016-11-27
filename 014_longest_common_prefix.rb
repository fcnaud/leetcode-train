#!/usr/bin/ruby
#
# @param {String[]} strs
# @return {String}
#

def longest_common_prefix(strs)
  return "" if strs.length==0

  index = 0
  flag  = true

  while true

    for i in (0..strs.length-1)
      if strs[i].length<=index || strs[i][index]!=strs[0][index]
        flag = false
        break
      end
    end

    break if !flag
    index+=1
  
  end

  strs[0][0...index-1]

end

p longest_common_prefix(["a", "b"])

