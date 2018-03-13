# @param {String} s
# @return {Integer}

def length_of_longest_substring(s)
  ref = Hash.new

  res = 0
  be = 0
  (0...s.size).each do |cur_index|
    cur_char = s[cur_index]
    if ref[cur_char]
      temp_begin = be
      be = ref[cur_char] + 1
      (temp_begin...be).each do |i|
        ref[s[i]] = nil
      end
    else
      res = [res, cur_index-be+1].max
    end
    ref[cur_char] = cur_index
  end
  res
end