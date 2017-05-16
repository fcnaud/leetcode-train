def check_record(s)
  return false if s.count('A')>1

  cnt = 0
  s.chars do |val|
    if val=='L' then cnt+=1 else cnt=0 end
    return false if cnt==3
  end

  true
end

p check_record("PPALLP")
p check_record("PPALLL")
p check_record("LALL")