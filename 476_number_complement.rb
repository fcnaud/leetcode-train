def find_complement(num)

  num.to_s(2).chars.map do |val|
    if val=='0' then '1' else '0' end
  end.join.to_i(2)

end

p find_complement(5)