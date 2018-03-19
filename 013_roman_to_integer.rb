# @param {String} s
# @return {Integer}

def roman_to_int(s)
  order = Hash.new
  order['I'] = 1
  order['V'] = 2
  order['X'] = 3
  order['L'] = 4
  order['C'] = 5
  order['D'] = 6
  order['M'] = 7

  ref = Hash.new
  ref['I'] = 1
  ref['V'] = 5
  ref['X'] = 10
  ref['L'] = 50
  ref['C'] = 100
  ref['D'] = 500
  ref['M'] = 1000

  ans = 0
  (0...s.size).each do |index|
    if index<(s.size-1) && order[s[index]]<order[s[index+1]]
      ans -= ref[s[index]]
    else
      ans += ref[s[index]]
    end
  end
  ans
end

p roman_to_int("MMMCCCXXXIII")