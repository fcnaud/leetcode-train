def compare(v1, v2, ind)
  if !v1[ind] && !v2[ind] ; return 0
  elsif !v1[ind]
    if v2[ind]==0 ; return compare(v1, v2, ind+1)
    else return -1 end
  elsif !v2[ind]
    if v1[ind]==0 ; return compare(v1, v2, ind+1)
    else return 1 end
  else
    if v1[ind]==v2[ind] ; return compare(v1, v2, ind+1)
    elsif v1[ind]>v2[ind] then return 1
    else return -1
    end
  end
end

def compare_version(version1, version2)
  v1 = version1.split('.').map { |str| str.to_i}
  v2 = version2.split('.').map { |str| str.to_i}
  compare(v1, v2, 0)
end

p compare_version("1.2", "1.10")
