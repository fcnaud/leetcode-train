def to_hex(num)
  if num>=0
    num.to_s(16)
  else
    (num+0xffffffff+1)%0xffffffff == 0 ? 0xffffffff.to_s(16) : (num+0xffffffff+1).to_s(16)
  end
end