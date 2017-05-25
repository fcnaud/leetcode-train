def get_row(row_index)
  return [1]   if row_index==0
  return [1,1] if row_index==1

  ret = Array.new(row_index+1, 1)
  (2..row_index).each do |line|
    (line-1).downto(1).each do |ind|
      ret[ind] = ret[ind]+ret[ind-1]
    end
  end
  ret
end

p get_row(3)
p get_row(5)