# @param {String} digits
# @return {String[]}

def letter_combinations(digits)
  ref = [
      ' ',
      '',
      'abc',
      'def',
      'ghi',
      'jkl',
      'mno',
      'pqrs',
      'tuv',
      'wxyz',
  ]
  res = []
  dfs = ->(index, str) do
    if index < digits.size
      ref[digits[index].to_i].each_char do |ch|
        dfs.call(index+1, str+ch)
      end
    else
      res << str if not str.empty?
    end
  end

  dfs.call(0, '')
  res
end