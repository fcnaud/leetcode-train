def plus_one(digits)
  (digits.reduce(0) {|sum, i| sum=sum*10+i} + 1).to_s.chars.map {|ch| ch.ord-'0'.ord}
end
