def is_happy(n)
  st = Set.new
  while n!=1
    return false if st.include?(n)
    st.add(n)
    n = n.to_s.chars.map { |ch| ch.to_i**2 }.reduce(:+)
  end
  return true
end
