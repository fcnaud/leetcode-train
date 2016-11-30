#!/usr/bin/ruby
# @param {String} ransom_note
# @param {String} magazine
# @return {String}
#

def can_construct(ransom_note, magazine)
  des = Hash.new(0)
  ransom_note.chars.map { |ch| des[ch]+=1 }
  src = Hash.new(0)
  magazine.chars.map { |ch| src[ch]+=1 }

  ('a'..'z').map { |ch|
    return false if des[ch] > src[ch]
  }

  return true
end

p con_construct("a", "b")
