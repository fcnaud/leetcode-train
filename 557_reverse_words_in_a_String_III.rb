def reverse_words(s)
  s.split(' ').map do |str|
    str.reverse
  end.join(' ')
end

p reverse_words("let's go to school")