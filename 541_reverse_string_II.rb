
def str_split(s, k)
  str_arr = []
  (0...(s.size+k+1)/k).each do |i|
    str_arr<<[]
    (0...k).each do |j|
      break if (i*k+j)>=s.size
      str_arr.last << s[i*k+j]
    end
  end
  str_arr
end

def reverse_str(s, k)
  str_split(s, k).map.with_index do |val, index|
    if index%2==0 then val.reverse else val end
  end.reduce(:concat).join
end

p str_split("abcdegf", 9)
p reverse_str("abcdegf", 9)