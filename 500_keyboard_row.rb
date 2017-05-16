UPLINE = "qwertyuiop"
MIDLINE = "asdfghjkl"
DOWNLINE = "zxcvbnm"

class String
  def make_up_by(str)
    not self.downcase.chars.any? do |chr|
      not str.include? chr
    end
  end
end

def find_words(words)
  words.select do |word|
    if UPLINE.include? word[0].downcase
      word.make_up_by(UPLINE)
    elsif MIDLINE.include? word[0].downcase
      word.make_up_by(MIDLINE)
    else
      word.make_up_by(DOWNLINE)
    end
  end
end

p "hello".make_up_by(UPLINE)
p "asd".make_up_by(MIDLINE)
p find_words(["hello", "asd", "nk", "cxv"])